
from fastapi import APIRouter, Depends, File, Form, Query, UploadFile, Request

from audio.audio_match import feature_from_bytes, classify
from config import MAX_AUDIO_DISTANCE

router = APIRouter()

@router.post("/speech/check")
def speech_check(
        request: Request,
        audio: UploadFile = File(...),
        kind: str = Form(""),
        expected: str = Form(""),
        hints: list[str] = Form(default=[]),
):
    if kind not in ("vowel", "consonant"):
        kind = "vowel" if expected in "ㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ" else "consonant"

    data = audio.file.read()
    user_feat = feature_from_bytes(data) if data else None

    if user_feat is None:
        return {
            "char": "",
            "top": [],
            "message": "Không nghe rõ, hãy đọc lại to hơn."
        }

    if not request.app.state.audio_refs:
        return {
            "char": "",
            "top": [],
            "message": "Chưa có âm thanh mẫu trong hệ thống."
        }

    char, ranked = classify(
        user_feat,
        request.app.state.audio_refs,
        kind,
        MAX_AUDIO_DISTANCE
    )

    return {
        "char": char or "",
        "top": [
            {"char": c, "distance": round(d, 3)}
            for c, d in ranked[:3]
        ],
        "message": "" if char else "Không nghe rõ, hãy đọc lại.",
    }