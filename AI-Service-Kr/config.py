from pathlib import Path

MAX_AUDIO_DISTANCE = 1.1   # xa hơn mức này coi như không nghe ra (cần hiệu chỉnh theo dữ liệu thật)
# API Spring Boot trả về danh sách âm thanh mẫu (SỬA LẠI link này cho đúng API của bạn)
SPRING_BOOT_AUDIO_API_URL = "http://localhost:8080/api/character/all"
# Tên các trường có thể chứa link file âm thanh / nhãn ký tự trong mỗi phần tử JSON (SỬA nếu khác)
AUDIO_URL_KEYS = ("audioUrl", "audio_url", "audio", "url", "fileUrl")
AUDIO_LABEL_KEYS = ("name", "char", "character", "label")
SPRING_BOOT_API_URL = "http://localhost:8080/api/admin/all-temp"
MODEL_PATH = Path("/Users/macbook/AI-Service-Kr/model/230034_hangul.keras")
MODEL_CLASSES_MAP = [
    {"label": "a", "char": "ㅏ"},
    {"label": "ae", "char": "ㅐ"},
    {"label": "b", "char": "ㅂ"},
    {"label": "bb", "char": "ㅃ"},
    {"label": "ch", "char": "ㅊ"},
    {"label": "d", "char": "ㄷ"},
    {"label": "dd", "char": "ㄸ"},
    {"label": "e", "char": "ㅔ"},
    {"label": "eo", "char": "ㅓ"},
    {"label": "eu", "char": "ㅡ"},
    {"label": "g", "char": "ㄱ"},
    {"label": "gg", "char": "ㄲ"},
    {"label": "h", "char": "ㅎ"},
    {"label": "i", "char": "ㅣ"},
    {"label": "j", "char": "ㅈ"},
    {"label": "jj", "char": "ㅉ"},
    {"label": "k", "char": "ㅋ"},
    {"label": "m", "char": "ㅁ"},
    {"label": "n", "char": "ㄴ"},
    {"label": "ng", "char": "ㅇ"},
    {"label": "o", "char": "ㅗ"},
    {"label": "oe", "char": "ㅚ"},
    {"label": "p", "char": "ㅍ"},
    {"label": "r", "char": "ㄹ"},
    {"label": "s", "char": "ㅅ"},
    {"label": "ss", "char": "ㅆ"},
    {"label": "t", "char": "ㅌ"},
    {"label": "u", "char": "ㅜ"},
    {"label": "ui", "char": "ㅢ"},
    {"label": "wa", "char": "ㅘ"},
    {"label": "wae", "char": "ㅙ"},
    {"label": "we", "char": "ㅞ"},
    {"label": "wi", "char": "ㅟ"},
    {"label": "wo", "char": "ㅝ"},
    {"label": "ya", "char": "ㅑ"},
    {"label": "yae", "char": "ㅒ"},
    {"label": "ye", "char": "ㅖ"},
    {"label": "yeo", "char": "ㅕ"},
    {"label": "yo", "char": "ㅛ"},
    {"label": "yu", "char": "ㅠ"}
]

# Tra cứu ký tự người dùng đang CHỌN (FE gửi nhãn "a" hoặc ký tự "ㅏ" đều được) -> nhãn "a"
EXPECTED_LOOKUP = {}
for _item in MODEL_CLASSES_MAP:
    EXPECTED_LOOKUP[_item["label"]] = _item["label"]
    EXPECTED_LOOKUP[_item["char"]] = _item["label"]

# canvas => 64×64: nét trắng, nền đen, căn giữa và thu về đúng cỡ
