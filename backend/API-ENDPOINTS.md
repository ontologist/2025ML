# ML-101 Bot API Endpoints

## ✅ Chat API Created

The chat API endpoint is now ready! Here's how to use it.

## 📡 Available Endpoints

### 1. POST `/api/chat`
Main chat endpoint for student-bot interactions.

**Request:**
```json
{
  "user_id": "student123",
  "message": "What is machine learning?",
  "language": "en",
  "conversation_history": null,
  "use_rag": true
}
```

**Response:**
```json
{
  "response": "Machine learning is a subset of artificial intelligence...",
  "user_id": "student123",
  "language": "en",
  "context_used": true,
  "model": "qwen2.5:72b"
}
```

**Parameters:**
- `user_id` (required): Student identifier
- `message` (required): Student's question/message
- `language` (optional): "en" or "ja" (default: "en")
- `conversation_history` (optional): Previous messages for context
- `use_rag` (optional): Whether to use RAG (default: true)

### 2. GET `/api/health`
Check bot service health (separate from main health endpoint).

**Response:**
```json
{
  "ollama": true,
  "rag": true,
  "overall": true
}
```

### 3. GET `/api/test`
Test endpoint to verify bot is working.

**Response:**
```json
{
  "status": "success",
  "test_response": "Hello! I'm ML-101 Bot...",
  "context_used": true
}
```

## 🧪 Testing the API

### Using PowerShell (Invoke-RestMethod)

```powershell
# Test chat endpoint
$body = @{
    user_id = "test_user"
    message = "What is machine learning?"
    language = "en"
    use_rag = $true
} | ConvertTo-Json

Invoke-RestMethod -Uri "http://localhost:8001/api/chat" `
    -Method Post `
    -Body $body `
    -ContentType "application/json"
```

### Using curl

```bash
curl -X POST "http://localhost:8001/api/chat" \
  -H "Content-Type: application/json" \
  -d '{
    "user_id": "test_user",
    "message": "What is machine learning?",
    "language": "en"
  }'
```

### Using Python

```python
import requests

response = requests.post(
    "http://localhost:8001/api/chat",
    json={
        "user_id": "test_user",
        "message": "What is machine learning?",
        "language": "en"
    }
)

print(response.json())
```

### Using Browser/Postman

1. Open: http://localhost:8001/docs
2. Find `/api/chat` endpoint
3. Click "Try it out"
4. Enter request body
5. Click "Execute"

## 🌐 Example Queries

**English:**
```json
{
  "user_id": "student1",
  "message": "What are the activities for week 3?",
  "language": "en"
}
```

**Japanese:**
```json
{
  "user_id": "student2",
  "message": "第3週の活動は何ですか？",
  "language": "ja"
}
```

**With conversation history:**
```json
{
  "user_id": "student1",
  "message": "Can you explain more about that?",
  "language": "en",
  "conversation_history": [
    {"role": "user", "content": "What is pandas?"},
    {"role": "assistant", "content": "Pandas is a Python library..."}
  ]
}
```

## 🔍 How It Works

1. **Student sends message** → `/api/chat` endpoint
2. **RAG retrieves context** → Searches 4,202 indexed chunks for relevant course content
3. **Context + message sent to Ollama** → qwen2.5:72b model generates response
4. **Response returned** → Bot response with course-specific information

## 📊 Response Times

- **With RAG:** 2-5 seconds (includes context retrieval + LLM generation)
- **Without RAG:** 1-3 seconds (direct LLM generation)
- **First request:** May be slower (model loading)

## 🚨 Error Handling

If something goes wrong, you'll get:
```json
{
  "detail": "Chat error: [error message]"
}
```

Common issues:
- Ollama not running → Check `ollama serve`
- Model not loaded → Check `ollama list`
- Knowledge base not indexed → Run `python scripts/load_knowledge_base.py`

---

**Ready to test!** Start the server and try the `/api/test` endpoint first!


