from contextlib import asynccontextmanager

import asyncio

import httpx
import tensorflow as tf
from fastapi import FastAPI

from config import MODEL_CLASSES_MAP, MODEL_PATH, SPRING_BOOT_API_URL, SPRING_BOOT_AUDIO_API_URL
from services.audio_service import load_audio_refs
from services.image_processing import convert_bytes_to_binary_template


async def wait_for_backend(client, retries=60, delay=3):
    """Trong Docker các container khởi động cùng lúc: chờ backend trả lời rồi mới tải dữ liệu mẫu."""
    for i in range(retries):
        try:
            if (await client.get(SPRING_BOOT_AUDIO_API_URL)).status_code == 200:
                print(">>> Backend đã sẵn sàng.")
                return
        except Exception:
            pass
        print(f">>> Đang chờ backend ({i + 1}/{retries})...")
        await asyncio.sleep(delay)
    print("Cảnh báo: backend chưa sẵn sàng, dịch vụ AI chạy mà không có dữ liệu mẫu.")


@asynccontextmanager
async def lifespan(app: FastAPI):
    if not MODEL_PATH.exists():
        raise FileNotFoundError(f"Không tìm thấy mô hình tại: {MODEL_PATH.resolve()}")
    app.state.model = tf.keras.models.load_model(MODEL_PATH)

    app.state.model_idx_to_info = {
        i: {"label": item["label"], "char": item["char"], "index": i + 1}
        for i, item in enumerate(MODEL_CLASSES_MAP)
    }

    app.state.cached_templates = {item["label"]: [] for item in MODEL_CLASSES_MAP}
    app.state.audio_refs = {}      # { "ㅏ": [đặc trưng, ...], ... }
    label_to_char = {item["label"]: item["char"] for item in MODEL_CLASSES_MAP}

    print(">>> Đang kết nối Spring Boot để đồng bộ ảnh mẫu từ Cloudinary...")

    async with httpx.AsyncClient(timeout=30.0) as client:
        await wait_for_backend(client)
        try:
            resp = await client.get(SPRING_BOOT_API_URL)
            if resp.status_code == 200:
                templates_data = resp.json()

                # templates_data là danh sách các ký tự từ Spring Boot
                for item in templates_data:
                    # 1. Khớp nhãn theo "romanization" (ví dụ: "a", "eo",...)
                    label = item.get("romanization")
                    if not label or label not in app.state.cached_templates:
                        continue

                    # 2. Bóc danh sách URL từ mảng objects "samples"
                    samples = item.get("samples", [])

                    for sample in samples:
                        url = sample.get("imgUrl")
                        if not url:
                            continue
                        try:
                            img_resp = await client.get(url)
                            if img_resp.status_code == 200:
                                bin_img = convert_bytes_to_binary_template(img_resp.content)
                                if bin_img is not None:
                                    # Lưu kèm URL gốc + id để trả về cho FE hiển thị
                                    app.state.cached_templates[label].append({
                                        "bin": bin_img,
                                        "url": url,
                                        "id": sample.get("id"),
                                    })
                        except Exception as img_err:
                            print(f"Lỗi khi tải ảnh {url}: {img_err}")

                total_loaded = sum(len(v) for v in app.state.cached_templates.values())
                print(f">>> Đã nạp thành công {total_loaded} ảnh mẫu từ Cloudinary vào RAM!")
            else:
                print(f"Không thể lấy danh sách mẫu từ Spring Boot: Mã HTTP {resp.status_code}")
        except Exception as e:
            print(f"Cảnh báo: Không thể tải ảnh mẫu từ Cloudinary ({e}). Hãy đảm bảo Spring Boot đang chạy trước.")

        await load_audio_refs(client, app, label_to_char)

    yield

    del app.state.model
    app.state.model_idx_to_info.clear()
    app.state.cached_templates.clear()
    app.state.audio_refs.clear()