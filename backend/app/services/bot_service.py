"""Bot orchestration service that combines RAG and Ollama."""
from typing import List, Dict, Optional
from app.services.ollama_service import OllamaService
from app.services.rag_service import RAGService
from app.core.config import settings
import logging

logger = logging.getLogger(__name__)


class BotService:
    """Service that orchestrates RAG retrieval and LLM generation."""
    
    def __init__(self):
        self.ollama = OllamaService(model=settings.OLLAMA_MODEL)
        self.rag = RAGService()
        
        # System prompt for the bot
        self.system_prompt = """You are ML-101 Bot, a helpful AI tutor for a Machine Learning course at a university in Japan.

Your role:
- Provide educational guidance and support for ML-101: Machine Learning and Intelligence course
- Help students understand concepts, complete activities, and work on their final project
- Be encouraging, patient, and educational
- Guide students to solutions rather than giving direct answers
- Respond in the student's preferred language (English or Japanese)

You have access to:
- Course curriculum and syllabus
- Weekly activity plans (14 weeks)
- Lecture materials and slides
- Assignment instructions
- Technical resources and guides
- Bot activity guides with conversation flows

When answering:
1. Use the provided course context to give accurate, relevant answers
2. Reference specific weeks, activities, or assignments when relevant
3. Encourage students to think through problems
4. Provide hints and guidance rather than complete solutions
5. Be supportive and understanding of student struggles
6. If you don't know something, admit it rather than guessing

Always maintain a friendly, educational tone."""

    async def chat(
        self,
        user_id: str,
        message: str,
        language: str = "en",
        conversation_history: Optional[List[Dict[str, str]]] = None,
        use_rag: bool = True
    ) -> Dict[str, any]:
        """
        Main chat function that combines RAG and Ollama.
        
        Args:
            user_id: Student identifier
            message: User's message
            language: Preferred language (en/ja)
            conversation_history: Previous messages in conversation
            use_rag: Whether to use RAG for context retrieval
            
        Returns:
            Dictionary with response and metadata
        """
        try:
            # Retrieve relevant context from knowledge base
            context = ""
            if use_rag:
                context = self.rag.build_context(message, k=5)
                logger.info(f"Retrieved context for query: {message[:50]}...")
            
            # Build conversation messages
            messages = conversation_history or []
            messages.append({"role": "user", "content": message})
            
            # Enhance system prompt with context
            enhanced_prompt = self.system_prompt
            if context:
                enhanced_prompt += f"\n\nRelevant Course Context:\n{context}"
            
            # Add language preference
            if language == "ja":
                enhanced_prompt += "\n\nRespond in Japanese (日本語)."
            else:
                enhanced_prompt += "\n\nRespond in English."
            
            # Get response from Ollama
            response = await self.ollama.chat(
                messages=messages,
                system_prompt=enhanced_prompt,
                temperature=0.7,
                max_tokens=2000
            )
            
            # Prepare response
            result = {
                "response": response,
                "user_id": user_id,
                "language": language,
                "context_used": bool(context),
                "model": settings.OLLAMA_MODEL
            }
            
            logger.info(f"Generated response for user {user_id}")
            return result
            
        except Exception as e:
            logger.error(f"Error in bot chat: {str(e)}")
            raise Exception(f"Bot service error: {str(e)}")
    
    async def health_check(self) -> Dict[str, bool]:
        """Check health of bot components."""
        ollama_healthy = await self.ollama.health_check()
        
        return {
            "ollama": ollama_healthy,
            "rag": self.rag is not None,
            "overall": ollama_healthy and self.rag is not None
        }
    
    async def close(self):
        """Clean up resources."""
        await self.ollama.close()


