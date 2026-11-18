import cv2
import numpy as np
from fastapi import HTTPException

def preprocess_canvas_image(image_bytes: bytes, target_size=(64, 64)) -> tuple[np.ndarray, np.ndarray]:
    nparr = np.frombuffer(image_bytes, np.uint8)
    img = cv2.imdecode(nparr, cv2.IMREAD_GRAYSCALE)

    if img is None:
        raise HTTPException(status_code=400, detail="Không thể giải mã dữ liệu hình ảnh.")

    mean_val = np.mean(img)
    if mean_val > 127:
        _, thresh = cv2.threshold(img, 200, 255, cv2.THRESH_BINARY_INV)
    else:
        _, thresh = cv2.threshold(img, 50, 255, cv2.THRESH_BINARY)

    coords = cv2.findNonZero(thresh)
    if coords is None:
        raise HTTPException(status_code=400, detail="Canvas rỗng, vui lòng vẽ ký tự trước khi gửi.")

    x, y, w, h = cv2.boundingRect(coords)
    cropped = thresh[y : y + h, x : x + w]

    max_side = max(w, h)
    square = np.zeros((max_side, max_side), dtype=np.uint8)
    dx = (max_side - w) // 2
    dy = (max_side - h) // 2
    square[dy : dy + h, dx : dx + w] = cropped

    pad_val = int(round(max_side * 0.12))
    padded = cv2.copyMakeBorder(
        square, pad_val, pad_val, pad_val, pad_val,
        cv2.BORDER_CONSTANT, value=0
    )

    binary_stroke = cv2.resize(padded, target_size, interpolation=cv2.INTER_AREA)

    final_canvas = 255 - binary_stroke
    normalized = final_canvas.astype(np.float32) / 255.0
    x_tensor = np.expand_dims(normalized, axis=(0, -1))

    return x_tensor, binary_stroke

# Tham số bước "tạo kiểu giống ảnh mẫu" (chỉnh theo ảnh mẫu thật nếu cần)
STYLE_GAMMA = 0.6        # giống bảng LUT trong code gen ảnh
STYLE_GAIN = 270.0
STYLE_DILATE_ITER = 1    # số lần giãn nét (0 = không giãn). Tăng nếu nét người dùng còn mảnh hơn mẫu
STYLE_BLUR_SIGMA = 0.6   # độ mờ rìa nét
# Gen canvas giong anh mau => tien hanh so net
def stylize_like_template(binary_stroke: np.ndarray) -> np.ndarray:
    lut = np.array(
        [min(255, int((i / 255.0) ** STYLE_GAMMA * STYLE_GAIN)) for i in range(256)],
        dtype=np.uint8,
    )
    out = cv2.LUT(binary_stroke, lut)

    if STYLE_DILATE_ITER > 0:
        out = cv2.dilate(out, np.ones((3, 3), np.uint8), iterations=STYLE_DILATE_ITER)

    if STYLE_BLUR_SIGMA > 0:
        out = cv2.GaussianBlur(out, (3, 3), STYLE_BLUR_SIGMA)

    return out

# Get anh mau => giong anh canvas => tien hanh so net
def convert_bytes_to_binary_template(image_bytes: bytes, target_size=(64, 64)) -> np.ndarray:
    nparr = np.frombuffer(image_bytes, np.uint8)
    img = cv2.imdecode(nparr, cv2.IMREAD_GRAYSCALE)
    if img is None:
        return None

    mean_val = np.mean(img)
    if mean_val > 127:
        _, thresh = cv2.threshold(img, 200, 255, cv2.THRESH_BINARY_INV)
    else:
        _, thresh = cv2.threshold(img, 50, 255, cv2.THRESH_BINARY)

    coords = cv2.findNonZero(thresh)
    if coords is None:
        return None

    x, y, w, h = cv2.boundingRect(coords)
    cropped = thresh[y : y + h, x : x + w]

    max_side = max(w, h)
    square = np.zeros((max_side, max_side), dtype=np.uint8)
    dx = (max_side - w) // 2
    dy = (max_side - h) // 2
    square[dy : dy + h, dx : dx + w] = cropped

    pad_val = int(round(max_side * 0.12))
    padded = cv2.copyMakeBorder(
        square, pad_val, pad_val, pad_val, pad_val,
        cv2.BORDER_CONSTANT, value=0
    )

    return cv2.resize(padded, target_size, interpolation=cv2.INTER_AREA)

# IOU, Cosine, image moment (are raito, offset x, offset y)
