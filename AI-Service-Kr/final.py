import os
import secrets

from fastapi import FastAPI, Header, HTTPException
from fastapi.middleware.cors import CORSMiddleware

from services.lifespan import lifespan
from routes.handwriting import router as handwriting_router
from routes.speech import router as speech_router

app = FastAPI(
    title="Hangul Handwriting Evaluation API (CNN)",
    lifespan=lifespan
)

app.include_router(handwriting_router)
app.include_router(speech_router)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("final:app", host="127.0.0.1", port=8000, reload=True)