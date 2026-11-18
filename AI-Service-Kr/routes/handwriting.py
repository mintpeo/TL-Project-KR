from fastapi import APIRouter, Depends, File, Form, Query, UploadFile, Request

from config import EXPECTED_LOOKUP
from security import verify_key
from services.evaluation import generate_feedback, evaluate_stroke_similarity
from services.image_processing import preprocess_canvas_image, stylize_like_template

router = APIRouter()

@router.post("/predict", dependencies=[Depends(verify_key)])
async def predict_handwriting(
        request: Request,
        file: UploadFile = File(...),
        expected: str = Form(""),
        expected_query: str = Query("", alias="expected"),
        topk: int = 5,
):
    expected = (expected or expected_query or "").strip()   # nhận từ form HOẶC query, form ưu tiên
    contents = await file.read()
    x_input, user_binary = preprocess_canvas_image(contents, target_size=(64, 64))

    predictions = request.app.state.model(x_input, training=False).numpy()
    probs = predictions[0]
    best_idx = int(probs.argmax())
    best_info = request.app.state.model_idx_to_info.get(best_idx, {"label": "unknown", "char": ""})

    detected_label = best_info["label"]

    template_entries = request.app.state.cached_templates.get(detected_label, [])
    matched_template = None  # mẫu được dùng để so nét (trả về cho FE)

    if len(template_entries) > 0:
        best_stroke_metrics = None
        highest_score = -1.0

        # Bước xử lý thêm: đưa nét người dùng về kiểu giống ảnh mẫu trước khi so
        user_styled = stylize_like_template(user_binary)

        for idx, entry in enumerate(template_entries):
            metrics = evaluate_stroke_similarity(user_styled, entry["bin"])
            if metrics["score"] > highest_score:
                highest_score = metrics["score"]
                best_stroke_metrics = metrics
                matched_template = {
                    "id": entry["id"],
                    "img_url": entry["url"],
                    "index": idx,
                    "total_samples": len(template_entries),
                }

        feedback = generate_feedback(best_stroke_metrics, best_info["char"])
        evaluation_data = {
            "similarity_score": best_stroke_metrics["score"],
            "grade": feedback["grade"],
            "message": feedback["message"],
            "suggestions": feedback["suggestions"]
        }
    else:
        # Khi chưa có ảnh mẫu cho ký tự này: điểm tương đồng trả về 0
        evaluation_data = {
            "similarity_score": 0.0,
            "grade": "Chưa có ảnh mẫu",
            "message": f"Chưa tìm thấy ảnh mẫu cho chữ '{detected_label}' trong hệ thống.",
            "suggestions": []
        }

    # Người dùng viết KHÁC chữ đã chọn => vẫn trả chữ mẫu của chữ đã chọn (mặc định mẫu đầu tiên)
    # để họ biết chữ đó viết như thế nào.
    expected_label = EXPECTED_LOOKUP.get(expected.strip()) if expected else None
    is_expected_match = expected_label is None or expected_label == detected_label
    if not is_expected_match:
        expected_entries = request.app.state.cached_templates.get(expected_label, [])
        if expected_entries:
            first = expected_entries[0]
            matched_template = {
                "id": first["id"],
                "img_url": first["url"],
                "index": 0,
                "total_samples": len(expected_entries),
            }
        else:
            matched_template = None

    return {
        "prediction": {
            "label": best_info["label"],
            "char": best_info["char"],
            "confidence": round(float(probs[best_idx]), 3)
        },
        "evaluation": evaluation_data,
        # Chữ mẫu để hiển thị cho FE (None nếu chưa có ảnh mẫu).
        # Viết đúng chữ đã chọn: mẫu khớp nét nhất. Viết sai chữ: mẫu đầu tiên của chữ đã chọn.
        "matched_template": matched_template,
        # False khi chữ AI nhận ra khác với chữ người dùng đã chọn (chỉ có nghĩa khi FE gửi "expected")
        "is_expected_match": is_expected_match,
    }

