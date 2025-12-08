"""Configuration settings for the ML-101 Bot backend."""
from pydantic_settings import BaseSettings
from typing import Optional
import os
from pathlib import Path



class Settings(BaseSettings):
    """Application settings loaded from environment variables."""
    
    # Course Configuration
    COURSE_ID: str = "ml101"
    COURSE_NAME: str = "ML-101 Machine Learning and Intelligence"
    
    # Server Configuration
    BACKEND_PORT: int = 8001
    FRONTEND_PORT: int = 3001
    FIXED_IP: Optional[str] = None
    
    # GitHub Configuration
    GITHUB_REPO_URL: str = "https://github.com/ontologist/2025ML.git"
    GITHUB_PAGES_URL: str = "https://ontologist.github.io/2025ML/"
    
    # Ollama Configuration
    OLLAMA_BASE_URL: str = "http://localhost:11434"
    OLLAMA_MODEL: str = "llama3.2:latest"  # Changed from qwen2.5:72b for faster responses
    OLLAMA_EMBEDDING_MODEL: str = "nomic-embed-text"
    
    # Database Configuration
    DATABASE_URL: str = "postgresql://ml101bot:ml101bot_password@localhost:5432/ml101bot"
    REDIS_URL: str = "redis://localhost:6379"
    
    # RAG Configuration
    CHROMA_DB_PATH: str = "./chroma_db"
    KNOWLEDGE_BASE_PATH: str = "./knowledge_base"
    
    @property
    def knowledge_base_path_absolute(self) -> Path:
        """Get absolute path to knowledge base."""
        base = Path(__file__).parent.parent.parent
        return base / self.KNOWLEDGE_BASE_PATH.lstrip("./")
    
    # Email Configuration (for OTP authentication)
    SMTP_SERVER: str = "smtp.gmail.com"
    SMTP_PORT: int = 587
    SMTP_USERNAME: str = ""  # Your email address
    SMTP_PASSWORD: str = ""  # Your email password or app password
    FROM_EMAIL: str = ""  # Sender email (defaults to SMTP_USERNAME)
    
    # Security
    SECRET_KEY: str = "CHANGE_THIS_TO_RANDOM_STRING_32_CHARS_MIN"
    JWT_SECRET: str = "CHANGE_THIS_TO_RANDOM_STRING_32_CHARS_MIN"
    
    # Logging
    LOG_LEVEL: str = "INFO"
    LOG_FILE: str = "./logs/app.log"
    
    class Config:
        env_file = ".env"
        env_file_encoding = "utf-8"
        case_sensitive = True


# Create settings instance
settings = Settings()

# Ensure directories exist
Path(settings.CHROMA_DB_PATH).mkdir(parents=True, exist_ok=True)
Path(settings.KNOWLEDGE_BASE_PATH).mkdir(parents=True, exist_ok=True)
Path(settings.LOG_FILE).parent.mkdir(parents=True, exist_ok=True)

