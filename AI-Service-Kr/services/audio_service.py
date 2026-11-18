from audio.audio_match import reference_features_from_bytes

from config import AUDIO_LABEL_KEYS, AUDIO_URL_KEYS, SPRING_BOOT_AUDIO_API_URL

async def load_audio_refs(client, app, label_to_char):
    """Gọi API âm thanh của Spring Boot, tải từng file mẫu và nạp vào app.state.audio_refs."""
    char_set = set(label_to_char.values())
    try:
        resp = await client.get(SPRING_BOOT_AUDIO_API_URL)
        if resp.status_code != 200:
            print(f"Không thể lấy danh sách âm thanh: Mã HTTP {resp.status_code}")
            return
        data = resp.json()
        if isinstance(data, dict):            # phòng khi API bọc trong {"data": [...]} / {"content": [...]}
            data = data.get("data") or data.get("content") or []
        for item in data:
            key = next((str(item[k]) for k in AUDIO_LABEL_KEYS if item.get(k)), None)
            char = label_to_char.get(key) or (key if key in char_set else None)
            audio_url = next((item[k] for k in AUDIO_URL_KEYS if item.get(k)), None)
            if not char or not audio_url:
                print(f"Bỏ qua mục âm thanh không khớp: {item}")
                continue
            try:
                a_resp = await client.get(audio_url)
                if a_resp.status_code == 200:
                    feats = reference_features_from_bytes(a_resp.content)
                    if feats:
                        app.state.audio_refs.setdefault(char, []).extend(feats)
            except Exception as a_err:
                print(f"Lỗi khi tải âm thanh {audio_url}: {a_err}")
        print(f">>> Đã nạp âm thanh mẫu cho {len(app.state.audio_refs)} ký tự: {''.join(app.state.audio_refs)}")
    except Exception as e:
        print(f"Cảnh báo: Không thể tải âm thanh mẫu ({e}).")

