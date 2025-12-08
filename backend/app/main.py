"""Main FastAPI application for ML-101 Course Bot."""
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.core.config import settings
import logging

# Configure logging
logging.basicConfig(
    level=getattr(logging, settings.LOG_LEVEL),
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(settings.LOG_FILE),
        logging.StreamHandler()
    ]
)

logger = logging.getLogger(__name__)

# Create FastAPI app
app = FastAPI(
    title="ML-101 Bot API",
    description="Self-hosted course bot with Ollama",
    version="1.0.0"
)

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, specify actual origins
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def root():
    """Root endpoint."""
    return {
        "message": "ML-101 Course Bot API",
        "course": settings.COURSE_NAME,
        "version": "1.0.0"
    }


@app.get("/health")
async def health():
    """Health check endpoint."""
    from app.services.ollama_service import OllamaService
    
    ollama_healthy = False
    try:
        ollama = OllamaService()
        ollama_healthy = await ollama.health_check()
        await ollama.close()
    except Exception as e:
        logger.error(f"Health check error: {str(e)}")
    
    return {
        "status": "healthy" if ollama_healthy else "degraded",
        "ollama": "healthy" if ollama_healthy else "unhealthy",
        "course_id": settings.COURSE_ID
    }


# Include routers
from app.api import chat
app.include_router(chat.router, prefix="/api", tags=["chat"])

# Include auth router
from app.api import auth
app.include_router(auth.router, prefix="/api/auth", tags=["auth"])
# app.include_router(analytics.router, prefix="/api/analytics", tags=["analytics"])


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "app.main:app",
        host="0.0.0.0",
        port=settings.BACKEND_PORT,
        reload=True
    )

