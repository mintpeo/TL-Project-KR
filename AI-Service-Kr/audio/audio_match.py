"""
Nhận dạng âm đọc bằng cách so với CHÍNH FILE ÂM THANH MẪU của bạn (không dùng Whisper).
Cách làm giống chấm chữ viết: so người dùng với mẫu của từng ký tự rồi chọn ký tự giống nhất.

Cần:  pip install librosa
"""
from __future__ import annotations

import io

import librosa
import numpy as np
from faster_whisper.audio import decode_audio      # đọc được mp3/wav/webm, trả mảng 16 kHz

SR = 16000

# Nhóm ký tự: chỉ so trong đúng nhóm đang luyện để giảm nhầm lẫn
VOWELS = "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ"
CONSONANTS = "ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ"


def _trim(y: np.ndarray) -> np.ndarray:
    y, _ = librosa.effects.trim(y, top_db=25)
    return y


def extract_features(y: np.ndarray) -> np.ndarray | None:
    """MFCC 13 hệ số, chuẩn hoá theo từng file để bớt lệ thuộc micro/âm lượng."""
    y = np.asarray(y, dtype=np.float32)
    if y.size == 0 or float(np.max(np.abs(y))) < 1e-3:    # im lặng hoàn toàn
        return None
    y = _trim(y)
    if y.size < int(SR * 0.08):                       # quá ngắn
        return None
    m = librosa.feature.mfcc(y=y, sr=SR, n_mfcc=13)
    return (m - m.mean(axis=1, keepdims=True)) / (m.std(axis=1, keepdims=True) + 1e-8)


def feature_from_bytes(data: bytes) -> np.ndarray | None:
    """Dùng cho file mẫu tải về (mp3...) và cho bản ghi người dùng (wav)."""
    return extract_features(decode_audio(io.BytesIO(data), sampling_rate=SR))


# Mô phỏng nhiều kiểu giọng từ MỘT file mẫu (giọng trầm -> cao). 1.0 là bản gốc.
VOICE_RATES = (0.85, 1.0, 1.15, 1.3)


def reference_features_from_bytes(data: bytes, rates=VOICE_RATES) -> list[np.ndarray]:
    """Dùng cho FILE MẪU: trả về nhiều bản đặc trưng (gốc + biến đổi giọng) để bền hơn với người đọc khác."""
    y = decode_audio(io.BytesIO(data), sampling_rate=SR)
    feats = []
    for r in rates:
        sig = y if r == 1.0 else librosa.resample(y, orig_sr=int(SR * r), target_sr=SR)
        f = extract_features(sig)
        if f is not None:
            feats.append(f)
    return feats


def dtw_distance(a: np.ndarray, b: np.ndarray) -> float:
    D, wp = librosa.sequence.dtw(X=a, Y=b, metric="cosine")
    return float(D[-1, -1] / len(wp))


def classify(user_feat: np.ndarray, refs: dict[str, list[np.ndarray]], kind: str, max_distance: float = 0.9):
    """
    refs: { "ㅏ": [feat, feat...], ... }  (mỗi ký tự có thể có nhiều file mẫu)
    Trả về (ký_tự | None, danh_sách_xếp_hạng[(ký_tự, khoảng_cách)]).
    """
    group = VOWELS if kind == "vowel" else CONSONANTS
    ranked = []
    for ch, feats in refs.items():
        if ch in group and feats:
            ranked.append((ch, min(dtw_distance(user_feat, f) for f in feats)))
    ranked.sort(key=lambda x: x[1])

    if not ranked or ranked[0][1] > max_distance:     # quá xa mọi mẫu => coi như không nghe ra
        return None, ranked
    return ranked[0][0], ranked