# TLProjectK AI – tách module

Code được tách từ file Python gốc thành các nhóm chức năng. Các câu lệnh xử lý gốc được giữ nguyên nội dung; chỉ di chuyển sang file phù hợp và bổ sung import giữa các module để kết nối chúng.

## Cấu trúc

```text
TLProjectK_AI_split/
├── finalV8.py
├── config.py
├── audio/
│   ├── __init__.py
│   └── audio_match.py          # cần đặt file gốc audio_match.py vào đây
├── routes/
│   ├── __init__.py
│   ├── handwriting.py
│   └── speech.py
└── services/
    ├── __init__.py
    ├── audio_service.py
    ├── evaluation.py
    ├── image_processing.py
    └── lifespan.py
```

## Nhóm chức năng

- `config.py`: cấu hình API Spring Boot, đường dẫn model, danh sách nhãn và ánh xạ ký tự.
- `services/image_processing.py`: tiền xử lý canvas, chuẩn hóa ảnh mẫu và tạo kiểu nét.
- `services/evaluation.py`: tính độ tương đồng và tạo phản hồi.
- `services/audio_service.py`: tải và nạp âm thanh mẫu.
- `services/lifespan.py`: khởi tạo model, đồng bộ ảnh/âm thanh mẫu và giải phóng tài nguyên.
- `routes/handwriting.py`: API `/predict`.
- `routes/speech.py`: API `/speech/check`.
- `finalV8.py`: tạo FastAPI app, xác thực API key và nạp các route.

## Chạy

Đặt file `audio_match.py` hiện có của bạn vào thư mục `audio/`, sau đó chạy tại thư mục gốc:

```bash
uvicorn finalV8:app --host 0.0.0.0 --port 8000
```

## Lưu ý

1. File bạn gửi chỉ chứa import `audio.audio_match`, không chứa nội dung `audio_match.py`; vì vậy cần chép file đó vào `audio/` như cấu trúc trên.
2. `MODEL_PATH` trong `config.py` vẫn giữ nguyên đường dẫn tuyệt đối có trong code gốc. Đây là chủ ý giữ nguyên dòng code theo yêu cầu; đường dẫn này cần được xử lý ở bước Docker hóa sau.
3. Các URL Spring Boot cũng được giữ nguyên như file gốc.
4. Chưa thay đổi logic, tên endpoint, cấu trúc request/response hoặc thuật toán AI.
