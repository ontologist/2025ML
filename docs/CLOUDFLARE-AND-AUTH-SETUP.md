# Cloudflare Tunnel and Email OTP Authentication Setup

This guide covers setting up Cloudflare Tunnel for HTTPS access and email OTP authentication for your course bots.

## Overview

1. **Cloudflare Tunnel**: Provides free HTTPS access to your backend API (replaces ngrok)
2. **Email OTP Authentication**: Students login with email verification codes

## Part 1: Cloudflare Tunnel Setup

### Prerequisites

- A domain name managed by Cloudflare (free plan works)
- Domain added to your Cloudflare account

### Step 1: Install Cloudflare Tunnel

```powershell
# Using winget (recommended)
winget install --id Cloudflare.cloudflared

# Or download from:
# https://github.com/cloudflare/cloudflared/releases/latest
```

### Step 2: Login to Cloudflare

```powershell
cloudflared tunnel login
```

This opens your browser to authorize the tunnel.

### Step 3: Automated Setup (Recommended)

Use the setup script for each course:

```powershell
# For ML-101
.\scripts\setup-cloudflare-tunnel.ps1 `
    -CourseId "ml101" `
    -CourseName "ML-101 Machine Learning and Intelligence" `
    -Port 8001 `
    -Domain "tijerino.ai" `
    -Subdomain "ml101bot"

# For 2025HCI
.\scripts\setup-cloudflare-tunnel.ps1 `
    -CourseId "hci" `
    -CourseName "2025HCI" `
    -Port 8002 `
    -Domain "tijerino.ai" `
    -Subdomain "hcibot"

# For 2025BlenderUnity3DIntroClass
.\scripts\setup-cloudflare-tunnel.ps1 `
    -CourseId "blender" `
    -CourseName "2025BlenderUnity3DIntroClass" `
    -Port 8003 `
    -Domain "tijerino.ai" `
    -Subdomain "blenderbot"
```

### Step 4: Manual DNS Setup

After running the script, you'll need to create DNS records in Cloudflare:

1. Go to [Cloudflare Dashboard](https://dash.cloudflare.com)
2. Select your domain
3. Go to **DNS → Records → Add record**
4. Create **CNAME** record (or **A** record):
   - **Type:** CNAME (or A)
   - **Name:** `2025ml` (or `@` for root domain)
   - **Target:** `YOUR_TUNNEL_ID.cfargotunnel.com` (from script output)
   - **Proxy:** Proxied (orange cloud) ✅
   - **TTL:** Auto
5. Save the record
6. Wait 1-2 minutes for DNS propagation

### Step 5: Start Tunnel

```powershell
cd YOUR_COURSE\backend
.\start-tunnel.ps1
```

Or run directly:
```powershell
cloudflared tunnel run YOUR_TUNNEL_NAME
```

### Step 6: Run Tunnel as Service (Optional)

To run tunnel automatically on startup:

```powershell
# Run PowerShell as Administrator
cd YOUR_COURSE\backend
.\install-tunnel-service.ps1
```

### Step 7: Update Frontend

Update `docs/bot-chat.js` or set in localStorage:

```javascript
// Set Cloudflare URL
localStorage.setItem('bot_cloudflare_url', 'https://ml101bot.tijerino.ai');
```

Or edit `bot-chat.js` line ~65:
```javascript
return 'https://ml101bot.tijerino.ai/api';
```

## Part 2: Email OTP Authentication Setup

### Step 1: Configure Email Settings

Edit `backend/.env`:

```env
# Email Configuration (for OTP authentication)
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
SMTP_USERNAME=your.email@gmail.com
SMTP_PASSWORD=your_app_password
FROM_EMAIL=your.email@gmail.com
```

### Step 2: Gmail App Password Setup

1. Go to [Google Account Settings](https://myaccount.google.com/)
2. Security → 2-Step Verification (enable if not enabled)
3. Security → App passwords
4. Generate app password for "Mail"
5. Copy the 16-character password
6. Paste into `SMTP_PASSWORD` in `.env`

**Note:** Don't use your regular Gmail password. Use an app password.

### Step 3: Test Email Configuration

```powershell
cd backend
.\venv\Scripts\Activate.ps1
python -c "from app.services.email_service import EmailService; import asyncio; es = EmailService(); print('Email enabled:', es.enabled); asyncio.run(es.send_otp('test@example.com', '123456', 'Test Course'))"
```

### Step 4: Frontend Integration

The frontend automatically shows login when using HTTPS:

1. **Include login script** in your HTML:
```html
<script src="bot-login.js"></script>
<script src="bot-chat.js"></script>
```

2. **Include login CSS** in your styles:
```html
<link rel="stylesheet" href="bot-styles.css">
```

3. **Initialize bot** (login happens automatically):
```html
<script>
    const bot = new ML101BotChat();
</script>
```

### Step 5: How It Works

1. **Student visits bot page** → Login modal appears
2. **Student enters email** → OTP code sent via email
3. **Student enters OTP** → Verified and logged in
4. **Session stored** → No need to login again (until logout/clear cache)

### Step 6: Logout

Add logout button to your HTML:

```html
<button onclick="bot.login.logout()">Logout</button>
```

## Part 3: Complete Setup Script

For new courses, use the complete setup script with Cloudflare:

```powershell
.\scripts\setup-complete-course-bot.ps1 `
    -CourseId "blender" `
    -CourseName "2025BlenderUnity3DIntroClass" `
    -Port 8003 `
    -CloudflareDomain "tijerino.ai" `
    -CloudflareSubdomain "blenderbot"
```

This will:
- ✅ Set up backend with email OTP config
- ✅ Copy frontend files
- ✅ Set up Cloudflare Tunnel
- ✅ Configure everything automatically

## Troubleshooting

### Cloudflare Tunnel

**Tunnel not connecting:**
- Check Cloudflare dashboard → Zero Trust → Tunnels
- Verify DNS record is correct
- Check config.yml syntax
- Ensure tunnel is running: `cloudflared tunnel list`

**DNS not resolving:**
- Wait 1-2 minutes for DNS propagation
- Check Cloudflare DNS settings
- Verify CNAME target is correct

**Backend not accessible:**
- Make sure backend is running on localhost:PORT
- Check Windows Firewall allows localhost connections
- Verify service URL in config.yml

### Email OTP

**OTP not sending:**
- Check SMTP credentials in `.env`
- Verify Gmail app password is correct
- Check firewall allows SMTP (port 587)
- Test email service manually (see Step 3 above)

**OTP expired:**
- OTP codes expire in 10 minutes
- Request a new code if expired

**Too many attempts:**
- Max 5 attempts per OTP code
- Request a new code after max attempts

## Security Notes

1. **Email Credentials**: Never commit `.env` file to Git
2. **App Passwords**: Use app passwords, not regular passwords
3. **HTTPS Required**: Always use HTTPS for production (Cloudflare Tunnel)
4. **Session Storage**: User sessions stored in localStorage (secure for HTTPS)

## Next Steps

1. ✅ Set up Cloudflare Tunnel for all courses
2. ✅ Configure email OTP for each backend
3. ✅ Test login flow
4. ✅ Update frontend with Cloudflare URLs
5. ✅ Deploy to GitHub Pages

---

**Need Help?**

- See `backend/CLOUDFLARE-TUNNEL-SETUP.md` for detailed tunnel setup
- Check `backend/app/services/auth_service.py` for auth implementation
- Review `docs/bot-login.js` for frontend login logic

