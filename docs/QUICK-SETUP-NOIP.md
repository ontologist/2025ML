# Quick Setup: No-IP Certificate (No Reverse Proxy)

Since you can't install a reverse proxy, we'll run FastAPI with SSL directly.

## Quick Steps

### Step 1: Create No-IP Hostname

1. Go to: https://www.noip.com/members/dns/
2. Click **"Create Hostname"**
3. Enter:
   - **Hostname:** `ml101bot`
   - **Domain:** `tijerino.ddns.net`
   - **IP:** Your current IP (or auto-detect)
4. Save

You'll use: `ml101bot.tijerino.ddns.net`

### Step 2: Get Certificate Files

Find your No-IP certificate files:
- Certificate file (`.crt` or `.pem`)
- Private key file (`.key`)

**Common locations:**
- No-IP client directory
- Your Documents folder
- Certificate manager

### Step 3: Copy Certificates

```powershell
# Create certificates directory
New-Item -ItemType Directory -Force -Path "backend\certificates"

# Copy your certificate files (adjust source paths)
Copy-Item "C:\path\to\your\certificate.crt" -Destination "backend\certificates\cert.crt"
Copy-Item "C:\path\to\your\private.key" -Destination "backend\certificates\key.key"
```

### Step 4: Update Firewall

```powershell
New-NetFirewallRule -DisplayName "ML-101 Bot HTTPS" -Direction Inbound -LocalPort 8443 -Protocol TCP -Action Allow
```

### Step 5: Start Backend with SSL

```powershell
cd backend
.\venv\Scripts\Activate.ps1
python start_ssl.py
```

You should see:
```
✅ Certificate found: backend\certificates\cert.crt
✅ Private key found: backend\certificates\key.key

🚀 Starting ML-101 Bot API with SSL on port 8443
```

### Step 6: Test

```powershell
Invoke-WebRequest -Uri "https://ml101bot.tijerino.ddns.net:8443/health" -UseBasicParsing
```

### Step 7: Update Frontend

Edit `docs/bot-chat.js`, find line 34, replace with:

```javascript
return 'https://ml101bot.tijerino.ddns.net:8443/api';
```

### Step 8: Deploy

```powershell
git add docs/bot-chat.js
git commit -m "Configure API URL for No-IP HTTPS"
git push origin main
```

### Step 9: Test from GitHub Pages

Visit: https://ontologist.github.io/2025ML/#bot-portal

The bot should work! 🎉

---

## Troubleshooting

### "Certificate file not found"
- Check file paths are correct
- Verify files are named `cert.crt` and `key.key`
- Ensure files are in `backend/certificates/` directory

### "Port already in use"
- Change port in `start_ssl.py` from `8443` to `8444` (or another port)
- Update firewall rule and frontend URL

### "DNS not resolving"
- Check No-IP client is running
- Verify hostname is active
- Wait 2-5 minutes for DNS propagation

### "SSL certificate error"
- Verify certificate is valid for `*.tijerino.ddns.net`
- Check certificate hasn't expired
- Ensure private key matches certificate

---

## Need Help Finding Certificates?

Check:
1. No-IP client installation folder
2. Windows Certificate Store (certmgr.msc)
3. Your Documents folder
4. No-IP dashboard downloads

---

**That's it! No reverse proxy needed - FastAPI handles SSL directly.**

