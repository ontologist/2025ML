# Quick ngrok Commands

## 1. Configure ngrok (one-time setup)
```powershell
ngrok config add-authtoken YOUR_AUTH_TOKEN_HERE
```

## 2. Start ngrok tunnel (run this every time)
Open a **new PowerShell window** and run:
```powershell
ngrok http 8001
```

Then copy the HTTPS URL from the output (looks like `https://abc123.ngrok-free.app`)

## 3. Update frontend code
After you get your ngrok URL, I'll help you update `docs/bot-chat.js` with the URL.

## 4. Test
Visit: https://ontologist.github.io/2025ML/#bot-portal

---

**Remember:** Keep both windows open:
- Backend window (running uvicorn)
- ngrok window (running tunnel)

