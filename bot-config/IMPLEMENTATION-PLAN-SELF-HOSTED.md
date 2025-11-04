# ML-101 Course Bot Implementation Plan (Self-Hosted with Ollama)
# ML-101コースボット実装計画（Ollamaセルフホスト版）

**Generated:** January 2025  
**Status:** Planning Phase  
**Approach:** Self-Hosted with Ollama on Windows 11  
**Target Platform:** Windows 11 with RTX 4090 GPU  
**Target Completion:** Before Spring 2025 Semester Start

---

## Executive Summary | エグゼクティブサマリー

This document outlines a comprehensive plan to implement the ML-101 Course Bot using **Ollama** for fully self-hosted, privacy-preserving AI tutoring. This approach eliminates API costs, provides complete data control, and enables deployment on university infrastructure.

この文書は、**Ollama**を使用して完全にセルフホストされたプライバシー保護AIチューターシステムを実装するための包括的な計画を概説します。このアプローチはAPIコストを排除し、完全なデータ制御を提供し、大学インフラへの展開を可能にします。

### Key Advantages of Self-Hosted Approach | セルフホストアプローチの主な利点

✅ **No API Costs** - Zero ongoing LLM API expenses  
✅ **Complete Privacy** - All data stays on-premises  
✅ **No Rate Limits** - Unlimited usage within hardware capacity  
✅ **Full Control** - Customize models and responses  
✅ **Offline Capable** - Works without internet (after initial setup)  
✅ **Bilingual Support** - Use models optimized for EN/JA  

### Current State | 現状

**✅ Completed:**
- Bot configuration specifications (YAML)
- Bot behavior guidelines
- RAG knowledge base structure defined
- Activity guides for weeks 1-5
- Workflow engine specifications
- Data collection/analytics requirements

**❌ Missing:**
- Ollama server setup
- Bot implementation code
- Web portal interface
- Backend infrastructure
- Local RAG system
- Authentication system
- Database for analytics

---

## Technology Stack | 技術スタック

### Core Components

```yaml
LLM Engine:
  - Ollama (local LLM server)
  - Model: Llama 3.1 8B or Mistral 7B (bilingual support)
  - Embeddings: nomic-embed-text (for RAG)

Backend:
  - Python 3.13.7 + FastAPI
  - LangChain (with Ollama integration)
  - ChromaDB or Qdrant (local vector database)
  - PostgreSQL (analytics database)
  - Redis (session management, optional)

Frontend:
  - React + TypeScript (or simpler: HTML/JS)
  - Tailwind CSS (styling)
  - WebSocket (real-time chat)

Infrastructure:
  - Docker Desktop for Windows (with WSL2 backend)
  - Windows Services (for auto-start)
  - NSSM (Non-Sucking Service Manager) or Windows Task Scheduler
  - IIS or direct FastAPI (web server)
```

### Model Selection | モデル選択

| Model | Size | RAM Required | Bilingual | Speed | Recommendation |
|-------|------|--------------|-----------|-------|----------------|
| **Llama 3.1 8B** | 8B | 16GB+ | Good | Fast | ✅ Recommended |
| **Mistral 7B** | 7B | 14GB+ | Good | Fast | ✅ Alternative |
| **Llama 3.1 70B** | 70B | 80GB+ | Excellent | Slow | If GPU available |
| **Qwen2.5 7B** | 7B | 14GB+ | Excellent | Fast | ✅ Best for EN/JA |

**Recommended:** Start with **Qwen2.5 7B** or **Llama 3.1 8B** for best bilingual performance.

---

## Hardware Requirements | ハードウェア要件

### Target System Configuration | ターゲットシステム構成

**✅ Your Setup: Windows 11 with RTX 4090 - Multi-Course Hosting**
- **GPU:** NVIDIA RTX 4090 (24GB VRAM) - ✅ Excellent for large models
- **OS:** Windows 11
- **Network:** Fixed IP address configured
- **Courses:** 3 courses total (including ML-101)
- **Expected Performance:** ~1-3 seconds per response (excellent)

**Capabilities with RTX 4090 for Multi-Course:**
- Can run models up to 70B parameters efficiently
- Support 30+ concurrent students per course (90+ total)
- Excellent response times (~1-3 seconds)
- Can run multiple models simultaneously if needed
- **Resource Allocation:** Each course can share the same model or use separate smaller models

**Multi-Course Architecture:**
- **Shared Model Approach:** All 3 courses use the same Ollama model instance (recommended)
- **Separate Models:** Each course can have its own model if needed (more VRAM usage)
- **Isolated Knowledge Bases:** Each course has its own RAG vector database
- **Separate Backend Instances:** Each course runs on different ports
- **Shared Database:** PostgreSQL with course_id separation

### Recommended Model Selection for RTX 4090

Given your powerful GPU, you can run larger, more capable models:

| Model | Size | VRAM Usage | Bilingual | Speed | Recommendation |
|-------|------|------------|-----------|-------|----------------|
| **Llama 3.1 70B** | 70B | ~40GB | Excellent | 2-4s | ✅ Best quality |
| **Qwen2.5 72B** | 72B | ~42GB | Excellent | 2-4s | ✅ Best for EN/JA |
| **Llama 3.1 8B** | 8B | ~5GB | Good | 0.5-1s | ✅ Fastest |
| **Qwen2.5 7B** | 7B | ~4GB | Excellent | 0.5-1s | ✅ Fast + bilingual |

**Recommended for Multi-Course Setup:**
- **Option 1 (Shared Model):** Use **Qwen2.5 72B** or **Llama 3.1 70B** - All 3 courses share the same model instance
  - ✅ Most efficient VRAM usage (~42GB total)
  - ✅ Excellent quality for all courses
  - ✅ Best approach for 3 courses
  
- **Option 2 (Separate Models):** Use **Qwen2.5 7B** x3 - Each course has its own model
  - Uses ~12GB VRAM total (4GB each)
  - Faster responses per course
  - Allows model customization per course
  
**Recommendation:** Use **Option 1** (shared Qwen2.5 72B) for best quality and efficiency.

### Deployment Configuration | デプロイメント構成

**✅ Your Setup: Windows 11 Desktop with Fixed IP**

**Network Configuration for Multi-Course:**
- **Fixed IP Address:** Configured on Windows 11
- **Access Method:** Students access via `http://<your-fixed-ip>:<course-port>`
- **Port Configuration (Per Course):**
  - **Course 1 (ML-101):** Backend API: Port 8001, Frontend: Port 3001
  - **Course 2:** Backend API: Port 8002, Frontend: Port 3002
  - **Course 3:** Backend API: Port 8003, Frontend: Port 3003
  - **Ollama:** Port 11434 (shared, internal, not exposed)
  - **PostgreSQL:** Port 5432 (shared, internal)
  - **Redis:** Port 6379 (shared, internal, optional)
- **Firewall:** Windows Firewall configured to allow ports 8001-8003, 3001-3003

**Advantages:**
- ✅ Full control on your machine
- ✅ No external dependencies
- ✅ Complete privacy
- ✅ Excellent GPU performance
- ✅ Easy maintenance and updates

---

## Implementation Phases | 実装フェーズ

### Phase 1: Infrastructure Setup (Week 1-2)
**Duration:** 2 weeks  
**Priority:** Critical

#### 1.1 Ollama Installation on Windows 11

**Prerequisites:**
- [ ] Install NVIDIA drivers (latest from nvidia.com)
- [ ] Verify RTX 4090 is detected: `nvidia-smi` in Command Prompt

**Tasks:**
- [ ] Download Ollama Windows installer
- [ ] Install Ollama
- [ ] Verify GPU detection
- [ ] Download and test base model
- [ ] Test Ollama API
- [ ] Configure model settings
- [ ] Set up Windows Service for auto-start

**Installation Steps:**

1. **Download Ollama:**
   - Visit: https://ollama.com/download/windows
   - Download `OllamaSetup.exe`
   - Run installer (administrator privileges)

2. **Verify Installation:**
   ```powershell
   # Open PowerShell
   ollama --version
   ```

3. **Verify GPU:**
   ```powershell
   # Check if GPU is detected
   ollama list
   # Should show GPU support if drivers are correct
   ```

4. **Pull Models (Recommended for RTX 4090):**
   ```powershell
   # For best quality (uses ~42GB VRAM)
   ollama pull qwen2.5:72b
   
   # OR for speed (uses ~4GB VRAM)
   ollama pull qwen2.5:7b
   
   # OR Llama 3.1 70B (excellent, uses ~40GB VRAM)
   ollama pull llama3.1:70b
   ```

5. **Test Model:**
   ```powershell
   ollama run qwen2.5:72b "Hello in English and Japanese | 英語と日本語でこんにちは"
   ```

**Verification:**
```powershell
# Test API
$body = @{
    model = "qwen2.5:72b"
    prompt = "Say hello in Japanese"
    stream = $false
} | ConvertTo-Json

Invoke-RestMethod -Uri "http://localhost:11434/api/generate" -Method Post -Body $body -ContentType "application/json"
```

**Configure Windows Service (Auto-start):**
- Use NSSM (Non-Sucking Service Manager) or Windows Task Scheduler
- See installation script below

#### 1.2 Local Vector Database Setup

**Tasks:**
- [ ] Choose vector DB (ChromaDB recommended for simplicity)
- [ ] Install ChromaDB
- [ ] Set up embedding model (nomic-embed-text via Ollama)
- [ ] Test embedding generation
- [ ] Test vector storage and retrieval

**Setup:**
```bash
# Install ChromaDB
pip install chromadb

# Pull embedding model
ollama pull nomic-embed-text
```

**ChromaDB Setup:**
```python
# app/services/rag_service.py
import chromadb
from langchain_community.embeddings import OllamaEmbeddings
from langchain_community.vectorstores import Chroma

# Initialize
embeddings = OllamaEmbeddings(model="nomic-embed-text")
client = chromadb.Client()
collection = client.create_collection("course_knowledge")

# Vector store
vectorstore = Chroma(
    client=client,
    collection_name="course_knowledge",
    embedding_function=embeddings
)
```

#### 1.3 Multi-Course Project Structure Setup

**Directory Structure for 3 Courses:**

```
course-bots/
├── shared/
│   ├── ollama/              # Ollama installation (shared)
│   └── postgres/            # PostgreSQL data (shared)
├── course-1-ml101/          # ML-101 Course
│   ├── backend/
│   │   ├── app/
│   │   ├── knowledge_base/
│   │   └── requirements.txt
│   ├── frontend/
│   └── .env                 # Port 8001, 3001
├── course-2/                # Course 2
│   ├── backend/
│   ├── frontend/
│   └── .env                 # Port 8002, 3002
├── course-3/                # Course 3
│   ├── backend/
│   ├── frontend/
│   └── .env                 # Port 8003, 3003
├── docker-compose.yml       # Shared services
└── install.ps1              # Installation script
```

**Key Points:**
- Each course has isolated backend/frontend
- Shared Ollama instance (port 11434)
- Shared PostgreSQL with course_id separation
- Different ports per course
- Isolated knowledge bases per course

#### 1.4 Development Environment

**Tasks:**
- [ ] Set up Python virtual environment
- [ ] Install dependencies
- [ ] Configure environment variables
- [ ] Set up Docker containers (PostgreSQL, Redis)
- [ ] Create docker-compose.yml
- [ ] Test local development setup

**requirements.txt:**
```txt
fastapi==0.109.0
uvicorn==0.27.0
langchain==0.1.0
langchain-community==0.0.10
chromadb==0.4.18
ollama==0.1.7
psycopg2-binary==2.9.9
redis==5.0.1
pydantic==2.5.3
python-dotenv==1.0.0
```

**docker-compose.yml:**
```yaml
version: '3.8'

services:
  postgres:
    image: postgres:15
    environment:
      POSTGRES_DB: ml101bot
      POSTGRES_USER: ml101bot
      POSTGRES_PASSWORD: ${DB_PASSWORD}
    volumes:
      - postgres_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"

  redis:
    image: redis:7-alpine
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data

volumes:
  postgres_data:
  redis_data:
```

**Deliverables:**
- Ollama running with model
- ChromaDB set up
- Development environment ready
- Docker containers running

#### 1.5 Multi-Course Configuration

**For 3 Courses Setup:**

**Shared Resources:**
- ✅ **Ollama:** Single instance (port 11434) - shared by all courses
- ✅ **PostgreSQL:** Single database with `course_id` column for separation
- ✅ **Model:** Qwen2.5 72B loaded once, used by all courses

**Isolated Resources:**
- ✅ **Backend Instances:** Separate FastAPI instances per course (ports 8001, 8002, 8003)
- ✅ **Frontend Instances:** Separate frontends per course (ports 3001, 3002, 3003)
- ✅ **Knowledge Bases:** Separate ChromaDB collections per course
- ✅ **Environment Files:** Separate .env per course

**Database Schema (Multi-Course):**
```sql
-- All tables include course_id for separation
CREATE TABLE interactions (
    id SERIAL PRIMARY KEY,
    course_id VARCHAR(50) NOT NULL,  -- ml101, course2, course3
    user_id VARCHAR(255),
    message TEXT,
    response TEXT,
    timestamp TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_interactions_course ON interactions(course_id);
```

**Resource Management:**
- **VRAM Usage:** ~42GB for shared Qwen2.5 72B model
- **RAM Usage:** ~8GB per course backend + 2GB shared = ~26GB total
- **Storage:** ~50GB per course knowledge base = ~150GB total
- **Concurrent Users:** 30 per course = 90 total (with RTX 4090)

---

### Phase 2: Backend Core Implementation (Week 3-4)
**Duration:** 2 weeks  
**Priority:** Critical

#### 2.1 FastAPI Application Setup

**Tasks:**
- [ ] Create FastAPI application structure
- [ ] Set up CORS middleware
- [ ] Implement authentication middleware
- [ ] Create API route structure
- [ ] Set up logging
- [ ] Configure error handling
- [ ] Add health check endpoints

**Key Files:**
```python
# app/main.py
from fastapi import FastAPI
from app.api import chat, auth, analytics
from app.core.config import settings

app = FastAPI(
    title="ML-101 Bot API",
    description="Self-hosted course bot with Ollama"
)

app.include_router(auth.router, prefix="/api/auth")
app.include_router(chat.router, prefix="/api/chat")
app.include_router(analytics.router, prefix="/api/analytics")

@app.get("/health")
async def health():
    return {"status": "healthy", "ollama": check_ollama()}
```

#### 2.2 Ollama Integration Service

**Tasks:**
- [ ] Create Ollama service wrapper
- [ ] Implement chat completion
- [ ] Add conversation management
- [ ] Implement context window management
- [ ] Add response streaming (optional)
- [ ] Error handling and retries
- [ ] Model switching capability

**Key Components:**
```python
# app/services/ollama_service.py
import ollama
from typing import List, Dict, Optional

class OllamaService:
    def __init__(self, model: str = "qwen2.5:7b"):
        self.model = model
        self.client = ollama.Client()
    
    def chat(
        self,
        messages: List[Dict[str, str]],
        system_prompt: Optional[str] = None,
        temperature: float = 0.7,
        max_tokens: int = 2000
    ) -> str:
        """Generate response using Ollama"""
        try:
            if system_prompt:
                messages = [{"role": "system", "content": system_prompt}] + messages
            
            response = self.client.chat(
                model=self.model,
                messages=messages,
                options={
                    "temperature": temperature,
                    "num_predict": max_tokens
                }
            )
            return response['message']['content']
        except Exception as e:
            raise Exception(f"Ollama error: {str(e)}")
    
    def health_check(self) -> bool:
        """Check if Ollama is running"""
        try:
            self.client.list()
            return True
        except:
            return False
```

#### 2.3 RAG System Implementation

**Tasks:**
- [ ] Document ingestion pipeline
- [ ] Text chunking strategy
- [ ] Embedding generation (using Ollama)
- [ ] Vector storage in ChromaDB
- [ ] Semantic search implementation
- [ ] Context retrieval and ranking
- [ ] Load course documents

**Knowledge Sources to Index:**
1. `/curriculum/*.md` - All curriculum documents (from GitHub repo)
2. `/activities/week-plans/*.md` - All weekly activities (from GitHub repo)
3. `/lectures/*.md` - Lecture materials (from GitHub repo)
4. `/bot-config/activity-guides/*.yaml` - Bot guides (from GitHub repo)
5. `/docs/*.html` and `/docs/*.md` - GitHub Pages content (downloaded)
6. `/github-pages/*.html` - Downloaded GitHub Pages HTML files
7. Technical documentation

**Key Components:**
```python
# app/services/rag_service.py
from langchain_community.embeddings import OllamaEmbeddings
from langchain_community.vectorstores import Chroma
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import DirectoryLoader, TextLoader
import os

class RAGService:
    def __init__(self, persist_directory: str = "./chroma_db"):
        self.embeddings = OllamaEmbeddings(model="nomic-embed-text")
        self.vectorstore = Chroma(
            persist_directory=persist_directory,
            embedding_function=self.embeddings
        )
        self.text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=1000,
            chunk_overlap=200
        )
    
    def ingest_documents(self, directory: str):
        """Load and index all course documents"""
        loader = DirectoryLoader(
            directory,
            glob="**/*.md",
            loader_cls=TextLoader
        )
        documents = loader.load()
        texts = self.text_splitter.split_documents(documents)
        self.vectorstore.add_documents(texts)
        self.vectorstore.persist()
    
    def retrieve_context(self, query: str, k: int = 5) -> List[str]:
        """Retrieve relevant context for query"""
        docs = self.vectorstore.similarity_search(query, k=k)
        return [doc.page_content for doc in docs]
    
    def build_context(self, query: str, k: int = 5) -> str:
        """Build formatted context string"""
        contexts = self.retrieve_context(query, k)
        return "\n\n".join([
            f"[Context {i+1}]:\n{ctx}" 
            for i, ctx in enumerate(contexts)
        ])
```

#### 2.4 Bot Orchestration Service

**Tasks:**
- [ ] Integrate Ollama with RAG
- [ ] Create conversation management
- [ ] Implement context injection
- [ ] Add response formatting
- [ ] Implement bilingual detection/routing
- [ ] Create system prompts
- [ ] Add conversation history storage

**Key Components:**
```python
# app/services/bot_service.py
from app.services.ollama_service import OllamaService
from app.services.rag_service import RAGService

class BotService:
    def __init__(self):
        self.ollama = OllamaService(model="qwen2.5:7b")
        self.rag = RAGService()
        self.system_prompt = """You are ML-101 Bot, a helpful AI tutor for a Machine Learning course.
You are bilingual (English and Japanese) and respond in the student's preferred language.
Always be encouraging, patient, and educational. Guide students to solutions rather than giving direct answers.
Use the provided context from course materials to answer questions accurately."""
    
    async def chat(
        self,
        user_id: str,
        message: str,
        language: str = "en",
        conversation_history: List[Dict] = None
    ) -> str:
        """Main chat function"""
        # Retrieve relevant context
        context = self.rag.build_context(message, k=5)
        
        # Build conversation
        messages = conversation_history or []
        messages.append({"role": "user", "content": message})
        
        # Add context to system prompt
        enhanced_prompt = f"{self.system_prompt}\n\nRelevant Course Context:\n{context}"
        
        # Get response
        response = self.ollama.chat(
            messages=messages,
            system_prompt=enhanced_prompt,
            temperature=0.7
        )
        
        # Store conversation
        await self.store_conversation(user_id, message, response)
        
        return response
```

#### 2.5 Workflow Engine

**Tasks:**
- [ ] Parse workflow YAML files
- [ ] Create workflow state machine
- [ ] Implement step-by-step guidance
- [ ] Add progress tracking
- [ ] Create completion validation
- [ ] Integrate with bot service

**Key Components:**
```python
# app/services/workflow_service.py
import yaml
from pathlib import Path

class WorkflowService:
    def __init__(self):
        self.workflows = self.load_workflows()
    
    def load_workflows(self):
        """Load all workflow YAML files"""
        workflows = {}
        workflow_dir = Path("bot-config/activity-guides")
        for file in workflow_dir.glob("*.yaml"):
            with open(file) as f:
                workflows[file.stem] = yaml.safe_load(f)
        return workflows
    
    def get_current_step(self, user_id: str, workflow_id: str):
        """Get current step for user in workflow"""
        # Implementation
        pass
    
    def advance_step(self, user_id: str, workflow_id: str):
        """Move to next step"""
        # Implementation
        pass
```

#### 2.6 Analytics Service

**Tasks:**
- [ ] Set up PostgreSQL database schema
- [ ] Create analytics models
- [ ] Implement data capture
- [ ] Create aggregation queries
- [ ] Build dashboard data endpoints

**Database Schema:**
```sql
-- interactions table
CREATE TABLE interactions (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(255),
    message TEXT,
    response TEXT,
    timestamp TIMESTAMP DEFAULT NOW(),
    language VARCHAR(10),
    response_time_ms INTEGER
);

-- activity_progress table
CREATE TABLE activity_progress (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(255),
    week_number INTEGER,
    activity_id VARCHAR(255),
    status VARCHAR(50),
    started_at TIMESTAMP,
    completed_at TIMESTAMP
);

-- assessments table
CREATE TABLE assessments (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(255),
    week_number INTEGER,
    score DECIMAL,
    responses JSONB,
    completed_at TIMESTAMP
);
```

**Deliverables:**
- Working FastAPI backend
- Functional RAG system with Ollama
- Bot orchestration service
- Workflow engine
- Analytics data capture

---

### Phase 3: Frontend Portal (Week 5-6)
**Duration:** 2 weeks  
**Priority:** Critical

#### 3.1 React Application Setup

**Tasks:**
- [ ] Initialize React + TypeScript project
- [ ] Set up routing (React Router)
- [ ] Configure state management (Zustand - lightweight)
- [ ] Set up API client (Axios)
- [ ] Create design system (Tailwind CSS)
- [ ] Set up authentication flow
- [ ] Create layout components

**Simplified Alternative:** If time-constrained, use a simpler HTML/JS frontend with htmx or vanilla JS.

#### 3.2 Chat Interface

**Tasks:**
- [ ] Design chat UI component
- [ ] Implement message rendering
- [ ] Add message input
- [ ] Implement message sending/receiving
- [ ] Add language toggle
- [ ] Create conversation history view

**Key Components:**
```tsx
// src/components/ChatInterface.tsx
import { useState } from 'react';
import axios from 'axios';

export const ChatInterface = ({ userId }: { userId: string }) => {
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState('');
  const [language, setLanguage] = useState<'en' | 'ja'>('en');
  
  const sendMessage = async () => {
    const response = await axios.post('/api/chat', {
      user_id: userId,
      message: input,
      language: language
    });
    setMessages([...messages, 
      { role: 'user', content: input },
      { role: 'assistant', content: response.data.response }
    ]);
    setInput('');
  };
  
  return (
    <div className="chat-container">
      <MessageList messages={messages} />
      <MessageInput 
        value={input}
        onChange={setInput}
        onSend={sendMessage}
        language={language}
      />
    </div>
  );
};
```

#### 3.3 Activity Dashboard

**Tasks:**
- [ ] Create dashboard layout
- [ ] Display current week activity
- [ ] Show progress indicators
- [ ] List completed activities
- [ ] Add activity navigation

#### 3.4 Assessment Interface

**Tasks:**
- [ ] Create assessment flow UI
- [ ] Implement question display
- [ ] Add answer input fields
- [ ] Show immediate feedback
- [ ] Display results summary

#### 3.5 Progress Tracking

**Tasks:**
- [ ] Create progress visualization
- [ ] Show weekly completion status
- [ ] Display interaction statistics

**Deliverables:**
- Fully functional web portal
- Chat interface
- Activity dashboard
- Assessment interface
- Progress tracking

---

### Phase 4: Integration & Testing (Week 7)
**Duration:** 1 week  
**Priority:** High

#### 4.1 Backend-Frontend Integration

**Tasks:**
- [ ] Connect frontend to backend API
- [ ] Test authentication flow
- [ ] Verify chat functionality
- [ ] Test workflow integration
- [ ] Validate analytics data flow
- [ ] Test error handling
- [ ] Verify bilingual support

#### 4.2 Knowledge Base Testing

**Tasks:**
- [ ] Test RAG retrieval accuracy
- [ ] Validate context relevance
- [ ] Test with sample student queries
- [ ] Verify document coverage
- [ ] Test multilingual queries
- [ ] Check response quality

#### 4.3 Performance Testing

**Tasks:**
- [ ] Measure response times
- [ ] Test concurrent users
- [ ] Optimize Ollama model settings
- [ ] Test with different models
- [ ] Monitor memory usage
- [ ] Check database performance

**Performance Targets:**
- Response time: < 10 seconds (CPU), < 5 seconds (GPU)
- Concurrent users: 10-30 depending on hardware
- Memory usage: Monitor and optimize

#### 4.4 Model Fine-Tuning (Optional)

**Tasks:**
- [ ] Test different models
- [ ] Adjust temperature settings
- [ ] Test system prompt variations
- [ ] Optimize for bilingual responses
- [ ] Fine-tune for course context

**Deliverables:**
- Fully integrated system
- Test results
- Performance benchmarks
- Optimized configuration

---

### Phase 5: Authentication & Security (Week 8)
**Duration:** 1 week  
**Priority:** High

#### 5.1 Authentication System

**Tasks:**
- [ ] Implement simple user registration
- [ ] Create login system
- [ ] Set up JWT tokens
- [ ] Implement session management
- [ ] Add user profile management
- [ ] Add role-based access (student/instructor)

**Simple Approach:**
- Email/password authentication
- JWT tokens for sessions
- PostgreSQL for user storage

#### 5.2 Security Measures

**Tasks:**
- [ ] Implement rate limiting
- [ ] Add input validation
- [ ] Set up CORS properly
- [ ] Encrypt sensitive data
- [ ] Implement audit logging
- [ ] Add data privacy controls

#### 5.3 Privacy Compliance

**Tasks:**
- [ ] Create privacy policy
- [ ] Implement data consent flow
- [ ] Add data export functionality
- [ ] Create data deletion process
- [ ] Set up data retention policies

**Deliverables:**
- Secure authentication system
- Privacy-compliant data handling

---

### Phase 6: Deployment (Week 9)
**Duration:** 1 week  
**Priority:** Critical

#### 6.1 Server Setup

**Tasks:**
- [ ] Set up production server/VPS
- [ ] Install Ollama on server
- [ ] Pull required models
- [ ] Set up systemd service for Ollama
- [ ] Configure auto-start
- [ ] Set up firewall rules

**Systemd Service:**
```ini
# /etc/systemd/system/ollama.service
[Unit]
Description=Ollama Service
After=network.target

[Service]
ExecStart=/usr/local/bin/ollama serve
User=ollama
Restart=always

[Install]
WantedBy=multi-user.target
```

#### 6.2 Application Deployment

**Tasks:**
- [ ] Set up production environment
- [ ] Configure environment variables
- [ ] Set up PostgreSQL (production)
- [ ] Configure Redis (if using)
- [ ] Set up Nginx reverse proxy (optional)
- [ ] Configure SSL certificate
- [ ] Set up monitoring
- [ ] Create deployment scripts

**Deployment Script:**
```bash
#!/bin/bash
# deploy.sh

# Build and start services
docker-compose -f docker-compose.prod.yml build
docker-compose -f docker-compose.prod.yml up -d

# Run migrations
docker-compose exec backend alembic upgrade head

# Load knowledge base
docker-compose exec backend python scripts/load_knowledge_base.py

echo "Deployment complete!"
```

#### 6.3 Knowledge Base Deployment

**Tasks:**
- [ ] Load all course documents into RAG
- [ ] Verify all documents indexed
- [ ] Test retrieval across all topics
- [ ] Optimize chunk sizes
- [ ] Set up automatic updates (optional)

**Knowledge Base Loading Script:**
```python
# scripts/load_knowledge_base.py
from app.services.rag_service import RAGService

rag = RAGService()

# Load course documents
rag.ingest_documents("curriculum")
rag.ingest_documents("activities/week-plans")
rag.ingest_documents("lectures")
rag.ingest_documents("bot-config/activity-guides")

print("Knowledge base loaded successfully!")
```

#### 6.4 Production Testing

**Tasks:**
- [ ] End-to-end testing
- [ ] Test with real student accounts
- [ ] Verify all features
- [ ] Check performance under load
- [ ] Test error scenarios
- [ ] Verify analytics collection

**Deliverables:**
- Deployed production system
- Accessible portal URL
- Monitoring and logging
- Documentation

---

### Phase 7: Instructor Dashboard (Week 10)
**Duration:** 1 week  
**Priority:** Medium

#### 7.1 Analytics Dashboard

**Tasks:**
- [ ] Create instructor login
- [ ] Build analytics visualization
- [ ] Add filtering capabilities
- [ ] Create export functionality

#### 7.2 Student Management

**Tasks:**
- [ ] View all students
- [ ] Individual student progress
- [ ] Intervention flags
- [ ] Communication tools

**Deliverables:**
- Instructor dashboard
- Analytics visualizations

---

## Technical Architecture | 技術アーキテクチャ

### System Diagram

```
┌─────────────────────────────────────────────────────────┐
│                    Student Browser                       │
│              (React Frontend Portal)                      │
└────────────────────┬─────────────────────────────────────┘
                     │ HTTPS
                     ▼
┌─────────────────────────────────────────────────────────┐
│                  API Gateway                            │
│              (FastAPI + Auth)                           │
└─────┬──────────────────┬──────────────────┬────────────┘
      │                   │                   │
      ▼                   ▼                   ▼
┌──────────┐    ┌──────────────┐    ┌──────────────┐
│  Bot     │    │  Workflow    │    │  Analytics  │
│ Service  │    │  Engine       │    │  Service    │
└────┬─────┘    └──────────────┘    └──────┬──────┘
     │                                      │
     │                                      │
     ▼                                      ▼
┌──────────────────────────────────┐  ┌──────────────┐
│         RAG System               │  │  PostgreSQL   │
│  (ChromaDB + Ollama Embeddings)  │  │  (Analytics)  │
└──────────────────────────────────┘  └──────────────┘
     │
     ▼
┌──────────────────────────────────┐
│         Ollama Server            │
│  (Qwen2.5 7B / Llama 3.1 8B)     │
│  Running on same server          │
└──────────────────────────────────┘
```

### Data Flow

1. **Student sends message** → Frontend
2. **Frontend** → API Gateway (authenticated)
3. **API Gateway** → Bot Service
4. **Bot Service** → RAG Service (retrieve context)
5. **RAG Service** → ChromaDB (semantic search)
6. **RAG Service** → Ollama Embeddings (generate query embedding)
7. **Bot Service** → Ollama API (with context + conversation)
8. **Ollama** → Bot Service (response)
9. **Bot Service** → Analytics Service (log interaction)
10. **Analytics Service** → PostgreSQL (store)
11. **Bot Service** → Frontend (response)
12. **Frontend** → Display to student

---

## Estimated Costs | 推定コスト

### One-Time Setup Costs

| Item | Cost | Notes |
|------|------|-------|
| **Server/VPS** (if needed) | $0-200/month | Depends on existing infrastructure |
| **GPU Server** (optional) | $100-300/month | For better performance |
| **Domain** | $10-15/year | If using custom domain |
| **SSL Certificate** | $0 | Let's Encrypt (free) |
| **Development Time** | Variable | Self-development or hiring |

### Monthly Operating Costs

| Service | Cost | Notes |
|---------|------|-------|
| **VPS/Server** | $0-200 | If using cloud hosting |
| **PostgreSQL** | $0-25 | Managed DB or included |
| **Redis** (optional) | $0-15 | Session storage |
| **Domain** | $1/month | Annual cost / 12 |
| **Monitoring** | $0-25 | Optional (Sentry, etc.) |
| **Total** | **$1-265/month** | Much lower than API-based! |

### Cost Comparison

| Approach | Monthly Cost | Notes |
|----------|--------------|-------|
| **Self-Hosted (Ollama)** | $1-265/month | ✅ This plan |
| **API-Based (OpenAI)** | $140-480/month | Previous plan |
| **Savings** | **$139-215/month** | Significant! |

---

## Risk Assessment | リスク評価

### Technical Risks

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|------------|
| **Hardware limitations** | Medium | High | Start with GPU, optimize model size |
| **Response time slower** | Medium | Medium | Acceptable for course bot (5-15s) |
| **Model quality** | Low | Medium | Test multiple models, fine-tune |
| **Deployment complexity** | Medium | Medium | Use Docker, comprehensive docs |
| **Knowledge base accuracy** | Low | Medium | Extensive testing, manual review |

### Operational Risks

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|------------|
| **Server downtime** | Low | High | Monitoring, backup server option |
| **Model updates** | Low | Low | Documented update process |
| **Storage issues** | Low | Medium | Regular backups, monitoring |

---

## Success Criteria | 成功基準

### Functional Requirements

- [ ] Students can access bot portal 24/7
- [ ] Bot responds in < 15 seconds (CPU) or < 5 seconds (GPU)
- [ ] Bilingual support works (EN/JA)
- [ ] All 14 weeks of activities have bot guidance
- [ ] Conversational assessments functional
- [ ] Progress tracking accurate
- [ ] Analytics data collected
- [ ] Instructor dashboard operational

### Performance Requirements

- [ ] Response time: < 15 seconds (95th percentile, CPU)
- [ ] Response time: < 5 seconds (95th percentile, GPU)
- [ ] Uptime: > 95% (self-hosted)
- [ ] Support 10-30 concurrent users (depending on hardware)
- [ ] RAG retrieval relevance: > 75%

### Quality Requirements

- [ ] Bot response accuracy: > 80% (acceptable for educational use)
- [ ] Student satisfaction: > 3.5/5
- [ ] Zero data loss
- [ ] Privacy compliance

---

## Quick Start Guide | クイックスタートガイド

### Automated Installation (Windows 11)

**For ML-101 Course (First Course):**
```powershell
# Run PowerShell as Administrator
cd C:\course-bots
.\install-windows.ps1 `
    -CourseId "ml101" `
    -BackendPort 8001 `
    -FrontendPort 3001 `
    -ModelName "qwen2.5:72b" `
    -FixedIP "192.168.1.100" `
    -GitHubRepo "https://github.com/ontologist/2025ML.git" `
    -GitHubPagesURL "https://ontologist.github.io/2025ML/" `
    -DownloadFromGitHub `
    -DownloadGitHubPages
```

**For Additional Courses:**
```powershell
# Course 2 (replace with actual repo URLs)
.\install-windows.ps1 `
    -CourseId "course2" `
    -BackendPort 8002 `
    -FrontendPort 3002 `
    -ModelName "qwen2.5:72b" `
    -FixedIP "192.168.1.100" `
    -GitHubRepo "https://github.com/ontologist/course2.git" `
    -GitHubPagesURL "https://ontologist.github.io/course2/" `
    -DownloadFromGitHub `
    -DownloadGitHubPages

# Course 3
.\install-windows.ps1 `
    -CourseId "course3" `
    -BackendPort 8003 `
    -FrontendPort 3003 `
    -ModelName "qwen2.5:72b" `
    -FixedIP "192.168.1.100" `
    -GitHubRepo "https://github.com/ontologist/course3.git" `
    -GitHubPagesURL "https://ontologist.github.io/course3/" `
    -DownloadFromGitHub `
    -DownloadGitHubPages
```

**GitHub Integration Features:**
- ✅ **Automatically clones repository** to get all course documents
- ✅ **Downloads GitHub Pages content** (HTML/Markdown files)
- ✅ **Copies curriculum, activities, lectures** to knowledge base
- ✅ **Includes bot activity guides** in knowledge base
- ✅ **Updates repository** on subsequent runs

**The script will:**
1. ✅ Check NVIDIA GPU (RTX 4090)
2. ✅ Install Ollama (if not already installed)
3. ✅ Download model (qwen2.5:72b)
4. ✅ Set up Python environment
5. ✅ Install dependencies
6. ✅ Configure Windows Firewall
7. ✅ Create startup scripts
8. ✅ Set up directory structure

### Manual Setup Steps

**After running the installation script:**

1. **Edit environment file:**
   ```powershell
   notepad C:\course-bots\course-ml101\backend\.env
   # Change SECRET_KEY and JWT_SECRET to random strings
   ```

2. **Set up PostgreSQL (using Docker):**
   ```powershell
   cd C:\course-bots
   docker-compose up -d postgres
   ```

3. **Course documents (if not auto-downloaded):**
   ```powershell
   # If script downloaded from GitHub, documents are already in knowledge_base
   # If not, you can manually copy:
   Copy-Item -Path "C:\path\to\2025ML\curriculum\*" -Destination "C:\course-bots\course-ml101\backend\knowledge_base" -Recurse
   Copy-Item -Path "C:\path\to\2025ML\activities\*" -Destination "C:\course-bots\course-ml101\backend\knowledge_base" -Recurse
   ```

4. **Load knowledge base:**
   ```powershell
   cd C:\course-bots\course-ml101\backend
   .\venv\Scripts\activate
   python scripts/load_knowledge_base.py
   ```

5. **Start backend:**
   ```powershell
   .\start-backend.ps1
   ```

6. **Access from network:**
   ```
   http://<your-fixed-ip>:8001
   ```

---

## Next Steps | 次のステップ

### Immediate Actions (This Week)

1. **Review and approve this plan**
2. **Configure fixed IP address** on Windows 11
3. **Run installation script** for ML-101 course
4. **Test Ollama with RTX 4090** (verify GPU usage)
5. **Test model performance** (Qwen2.5 72B)
6. **Set up additional courses** (if needed)

### Decision Points

1. **Model Selection** - Qwen2.5 72B (shared) vs separate models per course
2. **Port Allocation** - Confirm ports 8001-8003, 3001-3003 are available
3. **Frontend Complexity** - React vs simpler HTML/JS
4. **Database Setup** - Docker PostgreSQL vs manual installation
5. **Deployment Timeline** - Full 10 weeks vs MVP (6 weeks)

---

## Conclusion | 結論

This self-hosted implementation plan using Ollama provides a cost-effective, privacy-preserving solution for the ML-101 course bot. While response times may be slightly slower than API-based solutions, the benefits of complete control, zero API costs, and data privacy make this an excellent choice for educational institutions.

このOllamaを使用したセルフホスト実装計画は、ML-101コースボットのための費用対効果が高く、プライバシー保護のソリューションを提供します。応答時間はAPIベースのソリューションよりやや遅い可能性がありますが、完全な制御、ゼロAPIコスト、データプライバシーという利点により、教育機関にとって優れた選択肢となります。

**Recommended Approach:** Start with Phase 1 (Ollama setup) and test model performance before proceeding.

**推奨アプローチ：** フェーズ1（Ollama設定）から開始し、進捗前にモデルパフォーマンスをテストしてください。

---

**Document Version:** 2.1 (Self-Hosted, Multi-Course, Windows 11)  
**Last Updated:** January 2025  
**Platform:** Windows 11 with RTX 4090 GPU  
**Courses:** 3 courses (ML-101 + 2 additional)  
**Author:** BMad Master (with course context)

---

## Appendix: Installation Script | 付録：インストールスクリプト

The complete installation script `install-windows.ps1` is included in the `bot-config/` directory.

**Usage:**
```powershell
# Run as Administrator
.\install-windows.ps1 -CourseId "ml101" -BackendPort 8001 -FrontendPort 3001 -ModelName "qwen2.5:72b" -FixedIP "YOUR_IP"
```

**Script Features:**
- ✅ Automatic GPU detection
- ✅ Ollama installation
- ✅ Model download
- ✅ Python environment setup
- ✅ Firewall configuration
- ✅ Directory structure creation
- ✅ Environment file generation

**For additional courses, run the script again with different ports.**

