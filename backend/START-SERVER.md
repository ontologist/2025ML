# Starting the ML-101 Bot API Server

## Quick Start

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload
```

## What This Does

- Starts FastAPI server on port 8001
- `--host 0.0.0.0` allows connections from network (not just localhost)
- `--reload` enables auto-reload on code changes (for development)

## Access URLs

Once running, you can access:

- **Local:** http://localhost:8001
- **Network:** http://192.218.175.132:8001
- **Health Check:** http://192.218.175.132:8001/health
- **API Docs:** http://192.218.175.132:8001/docs (Swagger UI)
- **ReDoc:** http://192.218.175.132:8001/redoc (Alternative docs)

## Expected Output

You should see:
```
INFO:     Started server process [xxxxx]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8001 (Press CTRL+C to quit)
```

## Test Health Endpoint

Open a browser or use curl:
```powershell
Invoke-WebRequest -Uri http://localhost:8001/health | Select-Object -ExpandProperty Content
```

Should return:
```json
{
  "status": "healthy",
  "ollama": "healthy",
  "course_id": "ml101"
}
```

## Stop the Server

Press `Ctrl+C` in the terminal where it's running.

## Troubleshooting

### Port Already in Use
If port 8001 is already in use:
```powershell
netstat -ano | findstr :8001
```
Change the port in `.env` file or stop the other service.

### Ollama Not Running
If health check shows `"ollama": "unhealthy"`:
```powershell
ollama serve
```
Or make sure Ollama Desktop is running.

### Can't Connect from Network
- Check Windows Firewall (already done ✅)
- Check if antivirus is blocking
- Verify IP address is correct
- Try from another device on the same network

---

**Ready to start?** Run the commands above!


