# ngrok Setup - Step by Step Guide

## Prerequisites
✅ ngrok is already installed (version 3.30.0)

---

## Step 1: Get Your ngrok Authtoken (if not already done)

1. **Sign up for a free ngrok account** (if you don't have one):
   - Go to: https://dashboard.ngrok.com/signup
   - Create a free account (it's free!)

2. **Get your authtoken**:
   - After signing up, go to: https://dashboard.ngrok.com/get-started/your-authtoken
   - Copy your authtoken (it looks like: `2abc123def456ghi789jkl012mno345pqr678stu901vwx234yz_5A6B7C8D9E0F`)

---

## Step 2: Configure ngrok with Your Authtoken

Run this command in PowerShell (replace `YOUR_AUTH_TOKEN` with your actual token):

```powershell
ngrok config add-authtoken YOUR_AUTH_TOKEN
```

**Example:**
```powershell
ngrok config add-authtoken 2abc123def456ghi789jkl012mno345pqr678stu901vwx234yz_5A6B7C8D9E0F
```

---

## Step 3: Make Sure Your Backend is Running

Your backend should be running on port 8001. If it's not running, start it:

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\backend
.\venv\Scripts\Activate.ps1
python -m uvicorn app.main:app --host 0.0.0.0 --port 8001 --reload
```

**Keep this window open!** The backend must be running.

---

## Step 4: Start ngrok Tunnel

Open a **new PowerShell window** and run:

```powershell
ngrok http 8001
```

You'll see output like this:
```
Session Status                online
Account                       Your Name (Plan: Free)
Version                       3.30.0
Region                        United States (us)
Latency                       -
Web Interface                 http://127.0.0.1:4040
Forwarding                    https://abc123.ngrok-free.app -> http://localhost:8001
```

**Important:** Copy the HTTPS URL (the one starting with `https://`). It looks like:
- `https://abc123.ngrok-free.app`

**Keep this window open too!** If you close it, the tunnel stops.

---

## Step 5: Update Frontend Code

1. Open the file: `docs/bot-chat.js`
2. Find line 34 (looks like this):
   ```javascript
   return 'https://YOUR_HTTPS_API_URL/api'; // ⚠️ UPDATE THIS!
   ```
3. Replace `YOUR_HTTPS_API_URL` with your ngrok URL (without the `/api` part):
   ```javascript
   return 'https://abc123.ngrok-free.app/api'; // Use YOUR ngrok URL
   ```

**Example:** If your ngrok URL is `https://abc123.ngrok-free.app`, the code should be:
```javascript
return 'https://abc123.ngrok-free.app/api';
```

---

## Step 6: Save and Commit

```powershell
cd C:\Users\yuri\OneDrive\Documents\GitHub\2025ML
git add docs/bot-chat.js
git commit -m "Update API URL to ngrok HTTPS endpoint"
git push origin main
```

---

## Step 7: Test (Wait 1-2 minutes)

1. Wait 1-2 minutes for GitHub Pages to update
2. Visit: https://ontologist.github.io/2025ML/#bot-portal
3. Try sending a message - it should work! 🎉

---

## Important Notes

⚠️ **Keep ngrok Running:**
- The ngrok window must stay open
- If you close it, the URL changes and you'll need to update the code again
- The free tier gives you a random URL each time you restart

💡 **For a Permanent Solution:**
- Consider upgrading to ngrok paid plan for static domains
- Or use Cloudflare Tunnel (see `docs/STEP-BY-STEP-HTTPS-SETUP.md`)

---

## Troubleshooting

**Problem:** "ngrok authtoken not found"
- Solution: Run Step 2 again with your correct authtoken

**Problem:** "Tunnel not found" or "Connection refused"
- Solution: Make sure your backend is running (Step 3)

**Problem:** Still shows mixed content error
- Solution: Clear browser cache (Ctrl+Shift+Delete) and hard refresh (Ctrl+F5)

**Problem:** "ngrok: command not found"
- Solution: ngrok is installed, but if this happens, add it to your PATH or use full path

---

## Quick Reference

**Start ngrok:**
```powershell
ngrok http 8001
```

**Check ngrok status:**
- Open: http://127.0.0.1:4040 (web interface)
- Or check the PowerShell window

**Stop ngrok:**
- Press `Ctrl+C` in the ngrok window

