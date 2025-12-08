"""Script to load course documents into the RAG knowledge base."""
import sys
from pathlib import Path

# Add parent directory to path
sys.path.insert(0, str(Path(__file__).parent.parent))

from app.services.rag_service import RAGService
from app.core.config import settings
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


def main():
    """Load all course documents into the knowledge base."""
    logger.info("Starting knowledge base loading...")
    logger.info(f"Knowledge base path: {settings.KNOWLEDGE_BASE_PATH}")
    logger.info(f"ChromaDB path: {settings.CHROMA_DB_PATH}")
    
    # Initialize RAG service
    rag = RAGService()
    
    # Load documents
    try:
        chunk_count = rag.ingest_documents()
        logger.info(f"✅ Successfully loaded {chunk_count} document chunks")
        
        # Get collection info
        info = rag.get_collection_info()
        logger.info(f"Collection info: {info}")
        
    except Exception as e:
        logger.error(f"❌ Error loading knowledge base: {str(e)}")
        raise


if __name__ == "__main__":
    main()

