from fastapi import Header, HTTPException
import os

AI_SERVICE_KEY = os.getenv("AI_SERVICE_KEY", "HangulCNN")

async def verify_key(x_api_key: str = Header(None)):
    if x_api_key != AI_SERVICE_KEY:
        raise HTTPException(status_code=401, detail="Invalid API Key")