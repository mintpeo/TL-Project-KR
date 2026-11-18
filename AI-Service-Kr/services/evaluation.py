import cv2
import numpy as np

def evaluate_stroke_similarity(user_bin: np.ndarray, template_bin: np.ndarray) -> dict:
    # Ngưỡng 127 (thay vì 0) để vùng mờ ở rìa nét không làm phồng IoU
    intersection = np.logical_and(user_bin > 127, template_bin > 127).sum()
    union = np.logical_or(user_bin > 127, template_bin > 127).sum()
    iou = float(intersection / union) if union > 0 else 0.0

    u_norm = user_bin.astype(np.float32) / 255.0
    t_norm = template_bin.astype(np.float32) / 255.0
    dot_product = np.sum(u_norm * t_norm)
    norm_u = np.linalg.norm(u_norm)
    norm_t = np.linalg.norm(t_norm)
    cosine_sim = float(dot_product / (norm_u * norm_t)) if (norm_u * norm_t) > 0 else 0.0

    M_u = cv2.moments(user_bin)
    M_t = cv2.moments(template_bin)
    offset_x, offset_y = 0.0, 0.0
    if M_u["m00"] > 0 and M_t["m00"] > 0:
        cx_u, cy_u = M_u["m10"] / M_u["m00"], M_u["m01"] / M_u["m00"]
        cx_t, cy_t = M_t["m10"] / M_t["m00"], M_t["m01"] / M_t["m00"]
        offset_x = float(cx_u - cx_t)
        offset_y = float(cy_u - cy_t)

    area_ratio = float(M_u["m00"] / M_t["m00"]) if M_t["m00"] > 0 else 1.0

    final_score = (0.5 * iou + 0.5 * cosine_sim) * 100
    final_score = max(0.0, min(100.0, final_score))

    return {
        "score": round(final_score, 1),
        "iou": round(iou, 3),
        "cosine_sim": round(cosine_sim, 3),
        "offset_x": round(offset_x, 2),
        "offset_y": round(offset_y, 2),
        "area_ratio": round(area_ratio, 2)
    }

# Feed Back
def generate_feedback(eval_result: dict, detected_char: str) -> dict:
    score = eval_result["score"]
    off_x = eval_result["offset_x"]
    off_y = eval_result["offset_y"]
    area_ratio = eval_result["area_ratio"]

    suggestions = []

    if off_x > 5:
        suggestions.append("Nét chữ bị lệch sang bên phải so với khung mẫu.")
    elif off_x < -5:
        suggestions.append("Nét chữ bị lệch sang bên trái so với khung mẫu.")

    if off_y > 5:
        suggestions.append("Nét chữ bị đặt hơi thấp so với tâm.")
    elif off_y < -5:
        suggestions.append("Nét chữ bị đặt hơi cao so với tâm.")

    if area_ratio > 1.35:
        suggestions.append("Nét bút hơi đậm hoặc nét vẽ bị kéo quá dài.")
    elif area_ratio < 0.7:
        suggestions.append("Nét bút hơi mảnh hoặc bị thiếu nét.")

    if score >= 80:
        grade = "Xuất sắc"
        main_msg = f"Nét chữ '{detected_char}' viết rất chuẩn xác và cân đối!"
    elif score >= 65:
        grade = "Tốt"
        main_msg = f"Chữ '{detected_char}' viết rõ nét, tỷ lệ tương đối đều."
    elif score >= 50:
        grade = "Đạt"
        main_msg = f"Đúng ký tự '{detected_char}' nhưng các nét chưa thực sự khít với chữ mẫu."
        if not suggestions:
            suggestions.append("Cố gắng vẽ dứt khoát và nắn các nét thẳng hơn.")
    else:
        grade = "Cần luyện thêm"
        main_msg = f"Hình dạng chữ '{detected_char}' còn chênh lệch khá nhiều so với mẫu chuẩn."
        suggestions.append("Hãy quan sát kỹ nét mẫu và luyện viết chậm rãi từng nét.")

    return {
        "grade": grade,
        "message": main_msg,
        "suggestions": suggestions
    }

