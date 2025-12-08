# Using No-IP DDNS with Wildcard Certificate for ML-101 Bot

## Overview

You have:
- ✅ No-IP DDNS: `tijerino.ddns.net`
- ✅ Wildcard HTTPS certificate (covers `*.tijerino.ddns.net`)

We'll create a subdomain like `ml101bot.tijerino.ddns.net` and set up a reverse proxy to forward HTTPS traffic to your backend.

## Step-by-Step Setup

### Step 1: Create No-IP Hostname

1. Go to: https://www.noip.com/members/dns/
2. Click **"Create Hostname"**
3. Enter:
   - **Hostname:** `ml101bot` (or your preferred name)
   - **Domain:** `tijerino.ddns.net`
   - **IPv4 Address:** Your current public IP (192.218.175.132 or auto-detect)
4. Click **"Create Hostname"**

You now have: `ml101bot.tijerino.ddns.net` pointing to your IP.

### Step 2: Install Caddy (Easiest Reverse Proxy)

Caddy can use your existing certificate or automatically manage Let's Encrypt.

**Option A: Using winget**
```powershell
winget install Caddy.Caddy
```

**Option B: Manual Download**
1. Go to: https://caddyserver.com/download
2. Download Windows version
3. Extract to `C:\Caddy\`

### Step 3: Configure Caddy

Create `C:\Caddy\Caddyfile`:

```
ml101bot.tijerino.ddns.net {
    # Use your existing certificate
    tls /path/to/your/certificate.crt /path/to/your/private.key
    
    # Or let Caddy manage SSL (if you prefer)
    # tls {
    #     cert /path/to/your/certificate.crt
    #     key /path/to/your/private.key
    # }
    
    reverse_proxy localhost:8001
    
    # CORS headers (if needed)
    header {
        Access-Control-Allow-Origin *
        Access-Control-Allow-Methods "GET, POST, OPTIONS"
        Access-Control-Allow-Headers "Content-Type, Authorization"
    }
}
```

**OR if you want Caddy to use Let's Encrypt instead:**

```
ml101bot.tijerino.ddns.net {
    reverse_proxy localhost:8001
    
    header {
        Access-Control-Allow-Origin *
        Access-Control-Allow-Methods "GET, POST, OPTIONS"
        Access-Control-Allow-Headers "Content-Type, Authorization"
    }
}
```

### Step 4: Locate Your Certificate Files

You need to find where your No-IP certificate files are stored:
- Certificate file (`.crt` or `.pem`)
- Private key file (`.key`)

Common locations:
- `C:\Users\yuri\Documents\certificates\`
- `C:\Program Files\No-IP\certificates\`
- Or check your No-IP client configuration

**If you don't have the certificate files:**
- You can download them from No-IP dashboard
- Or use Caddy's automatic Let's Encrypt (easier)

### Step 5: Update Caddyfile with Certificate Paths

Edit `C:\Caddy\Caddyfile`:

```
ml101bot.tijerino.ddns.net {
    tls C:\path\to\certificate.crt C:\path\to\private.key
    
    reverse_proxy localhost:8001
    
    header {
        Access-Control-Allow-Origin *
        Access-Control-Allow-Methods "GET, POST, OPTIONS"
        Access-Control-Allow-Headers "Content-Type, Authorization"
    }
}
```

### Step 6: Configure Firewall

Allow HTTPS traffic (port 443):

```powershell
New-NetFirewallRule -DisplayName "ML-101 Bot HTTPS" -Direction Inbound -LocalPort 443 -Protocol TCP -Action Allow
```

### Step 7: Start Caddy

```powershell
cd C:\Caddy
.\caddy.exe run
```

Or install as Windows service:

```powershell
.\caddy.exe install --config C:\Caddy\Caddyfile
.\caddy.exe start
```

### Step 8: Test HTTPS Endpoint

```powershell
Invoke-WebRequest -Uri "https://ml101bot.tijerino.ddns.net/health" -UseBasicParsing
```

Should return: `{"status":"healthy","ollama":"healthy","course_id":"ml101"}`

### Step 9: Update Frontend Code

Edit `docs/bot-chat.js`, line 34:

```javascript
return 'https://ml101bot.tijerino.ddns.net/api';
```

### Step 10: Deploy and Test

```powershell
git add docs/bot-chat.js
git commit -m "Update API URL to No-IP HTTPS endpoint"
git push origin main
```

---

## Alternative: Using nginx (More Control)

If you prefer nginx:

### Step 1: Install nginx

Download from: http://nginx.org/en/download.html

### Step 2: Configure nginx

Edit `C:\nginx\conf\nginx.conf`:

```nginx
server {
    listen 443 ssl;
    server_name ml101bot.tijerino.ddns.net;

    ssl_certificate C:/path/to/certificate.crt;
    ssl_certificate_key C:/path/to/private.key;

    location / {
        proxy_pass http://localhost:8001;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        
        # CORS headers
        add_header Access-Control-Allow-Origin * always;
        add_header Access-Control-Allow-Methods "GET, POST, OPTIONS" always;
        add_header Access-Control-Allow-Headers "Content-Type, Authorization" always;
        
        if ($request_method = 'OPTIONS') {
            return 204;
        }
    }
}
```

### Step 3: Start nginx

```powershell
cd C:\nginx
.\nginx.exe
```

---

## Using Let's Encrypt Instead (Easier)

If you want to use automatic Let's Encrypt instead of your No-IP cert:

### Caddyfile (Simplified):

```
ml101bot.tijerino.ddns.net {
    reverse_proxy localhost:8001
    
    header {
        Access-Control-Allow-Origin *
        Access-Control-Allow-Methods "GET, POST, OPTIONS"
        Access-Control-Allow-Headers "Content-Type, Authorization"
    }
}
```

Caddy will automatically:
- Get Let's Encrypt certificate
- Renew automatically
- Handle HTTPS

---

## Troubleshooting

### Certificate Errors
- Verify certificate file paths are correct
- Check certificate is valid for `*.tijerino.ddns.net`
- Ensure certificate hasn't expired

### DNS Not Resolving
- Check No-IP client is running
- Verify hostname is active: https://www.noip.com/members/dns/
- Wait a few minutes for DNS propagation

### Connection Refused
- Check firewall allows port 443
- Verify backend is running on port 8001
- Check Caddy/nginx is running

### Mixed Content Still Blocking
- Clear browser cache
- Verify HTTPS URL is correct in `bot-chat.js`
- Check browser console for errors

---

## Quick Test Commands

```powershell
# Test DNS resolution
nslookup ml101bot.tijerino.ddns.net

# Test HTTPS endpoint
Invoke-WebRequest -Uri "https://ml101bot.tijerino.ddns.net/health" -UseBasicParsing

# Check if port 443 is open
Test-NetConnection -ComputerName ml101bot.tijerino.ddns.net -Port 443
```

---

## Recommended Setup

**Easiest:** Use Caddy with Let's Encrypt (automatic certificate management)
- No certificate file management
- Automatic renewal
- Works with your No-IP domain

**Your Certificate:** Use Caddy with your No-IP certificate
- Use your existing certificate
- More control over certificate

**Production:** Use nginx with your certificate
- More configuration options
- Better for complex setups

---

**Need help finding your certificate files?** Check:
- No-IP client installation directory
- Windows Certificate Store
- Your No-IP account dashboard


