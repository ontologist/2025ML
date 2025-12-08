# Troubleshooting ML-101 Bot

## Common Issues

### ❌ "An error occurred" or "Cannot connect to API server"

#### Issue: Mixed Content Blocking (HTTPS → HTTP)

**Problem:** When accessing the GitHub Pages site (https://ontologist.github.io/2025ML/), browsers block HTTP API requests for security. This is called "mixed content blocking."

**Solutions:**

1. **Local Testing (Recommended for Development):**
   - Serve the `docs/` folder locally using HTTP
   - Update `bot-chat.js` to use `http://localhost:8001` for API
   
   ```powershell
   # Option 1: Python HTTP server
   cd docs
   python -m http.server 8000
   # Then visit: http://localhost:8000/index.html
   
   # Option 2: VS Code Live Server extension
   # Right-click index.html → "Open with Live Server"
   ```

2. **Use HTTPS for Backend (Production):**
   - Set up SSL certificate for backend
   - Use a reverse proxy (nginx, Caddy) with Let's Encrypt
   - Update API URL to use HTTPS

3. **CORS Proxy (Quick Fix):**
   - Use a CORS proxy service (not recommended for production)
   - Example: `https://cors-anywhere.herokuapp.com/`

#### Issue: Backend Not Running

**Check:**
```powershell
# Check if backend is running
Invoke-WebRequest -Uri "http://192.218.175.132:8001/health"

# If not running, start it:
cd backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload
```

#### Issue: Network Access

**Problem:** The backend IP `192.218.175.132` is only accessible on the same network.

**Solutions:**
- Students must be on the same network as the server
- Or set up a VPN/tunnel for remote access
- Or use a publicly accessible server with port forwarding

### ❌ "Ollama error" or "Model not found"

**Check Ollama:**
```powershell
# Check if Ollama is running
ollama list

# If qwen2.5:72b is not installed:
ollama pull qwen2.5:72b

# Check if Ollama service is running:
Invoke-WebRequest -Uri "http://localhost:11434/api/tags"
```

### ❌ Chat responses are empty or generic

**Check RAG System:**
```powershell
# Verify knowledge base is loaded
cd backend
.\venv\Scripts\Activate.ps1
python -c "from app.services.rag_service import RAGService; rag = RAGService(); print(f'Chunks: {len(rag.vectorstore.get()[\"ids\"])}')"
```

**If empty, reload knowledge base:**
```powershell
python scripts/load_knowledge_base.py
```

## Browser Console Debugging

1. **Open Browser DevTools:**
   - Press `F12` or right-click → "Inspect"
   - Go to "Console" tab

2. **Check for errors:**
   - Look for red error messages
   - Check "Network" tab for failed requests

3. **Test API directly:**
   ```javascript
   // In browser console:
   fetch('http://192.218.175.132:8001/api/chat', {
     method: 'POST',
     headers: {'Content-Type': 'application/json'},
     body: JSON.stringify({
       user_id: 'test',
       message: 'Hello',
       language: 'en'
     })
   }).then(r => r.json()).then(console.log)
   ```

## Quick Health Check

Run this to verify everything is working:

```powershell
# 1. Backend health
Invoke-WebRequest -Uri "http://192.218.175.132:8001/health"

# 2. Ollama health
Invoke-WebRequest -Uri "http://localhost:11434/api/tags"

# 3. Test chat endpoint
$body = @{ user_id = "test"; message = "Hello"; language = "en" } | ConvertTo-Json
Invoke-RestMethod -Uri "http://192.218.175.132:8001/api/chat" -Method Post -Body $body -ContentType "application/json"
```

## Configuration

### Update API URL

If you need to change the backend URL, edit `docs/bot-chat.js`:

```javascript
// Line 6
this.apiUrl = 'http://YOUR_IP:8001/api';
```

### CORS Configuration

Backend CORS is configured in `backend/app/main.py`:

```python
allow_origins=["*"]  # Allows all origins
```

For production, restrict to specific domains:
```python
allow_origins=[
    "https://ontologist.github.io",
    "http://localhost:8000",
]
```

---

**Still having issues?** Check the backend logs:
```powershell
# Backend logs are in:
backend/logs/app.log
```


