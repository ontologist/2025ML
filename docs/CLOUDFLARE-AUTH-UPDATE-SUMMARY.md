# Cloudflare Tunnel and Email OTP Authentication - Update Summary

This document summarizes all changes made to integrate Cloudflare Tunnel and email OTP authentication.

## Changes Made

### 1. Backend Changes

#### New Files Created:
- `backend/app/services/email_service.py` - Email service for sending OTP codes
- `backend/app/services/auth_service.py` - Authentication service with OTP verification
- `backend/app/api/auth.py` - Authentication API endpoints

#### Updated Files:
- `backend/app/core/config.py` - Added email SMTP configuration options
- `backend/app/main.py` - Added auth router
- `backend/requirements.txt` - Added `pydantic[email]>=2.5.3` for email validation

#### New API Endpoints:
- `POST /api/auth/send-otp` - Send OTP code to user's email
- `POST /api/auth/verify-otp` - Verify OTP code and authenticate user
- `GET /api/auth/check-email` - Check if email is registered (for future use)

### 2. Frontend Changes

#### New Files Created:
- `docs/bot-login.js` - Login interface with email OTP flow
- `docs/CLOUDFLARE-AND-AUTH-SETUP.md` - Comprehensive setup guide

#### Updated Files:
- `docs/bot-chat.js` - Integrated authentication and Cloudflare Tunnel URL support
- `docs/bot-styles.css` - Added login modal styles

#### Key Features:
- Automatic login modal when using HTTPS/Cloudflare
- Email OTP verification flow
- Session persistence in localStorage
- Cloudflare Tunnel URL configuration support

### 3. Setup Scripts

#### New Files Created:
- `scripts/setup-cloudflare-tunnel.ps1` - Automated Cloudflare Tunnel setup

#### Updated Files:
- `scripts/setup-course-backend.ps1` - Added email OTP configuration to `.env`
- `scripts/setup-complete-course-bot.ps1` - Added Cloudflare Tunnel setup option

### 4. Configuration

#### Email Configuration (`.env`):
```env
SMTP_SERVER=smtp.gmail.com
SMTP_PORT=587
SMTP_USERNAME=your.email@gmail.com
SMTP_PASSWORD=your_app_password
FROM_EMAIL=your.email@gmail.com
```

#### Cloudflare Configuration:
- Tunnel config stored in `~/.cloudflared/config.yml`
- DNS records created in Cloudflare Dashboard
- Each course gets its own subdomain (e.g., `ml101bot.tijerino.ai` for ML-101)

## How It Works

### Authentication Flow:
1. Student visits bot page (HTTPS)
2. Login modal appears automatically
3. Student enters email address
4. OTP code sent via email (6 digits, expires in 10 minutes)
5. Student enters OTP code
6. Code verified → user authenticated
7. User ID stored in localStorage
8. Bot chat interface becomes available

### Cloudflare Tunnel Flow:
1. Backend runs on `localhost:PORT`
2. Cloudflare Tunnel creates HTTPS endpoint
3. DNS points to tunnel (`subdomain.domain.com`)
4. Frontend connects via HTTPS URL
5. No mixed content issues

## Usage

### Setting Up New Course with Cloudflare and Auth:

```powershell
.\scripts\setup-complete-course-bot.ps1 `
    -CourseId "blender" `
    -CourseName "2025BlenderUnity3DIntroClass" `
    -Port 8003 `
    -CloudflareDomain "tijerino.ai" `
    -CloudflareSubdomain "blenderbot"
```

### Manual Cloudflare Tunnel Setup:

```powershell
.\scripts\setup-cloudflare-tunnel.ps1 `
    -CourseId "ml101" `
    -CourseName "ML-101" `
    -Port 8001 `
    -Domain "tijerino.ai" `
    -Subdomain "ml101bot"
```

### Configuring Email OTP:

1. Edit `backend/.env`
2. Add SMTP credentials
3. For Gmail, use app password (not regular password)
4. Restart backend

### Frontend Integration:

```html
<!-- Include styles -->
<link rel="stylesheet" href="bot-styles.css">

<!-- Include scripts -->
<script src="bot-login.js"></script>
<script src="bot-chat.js"></script>

<!-- Initialize bot (login happens automatically) -->
<script>
    const bot = new ML101BotChat();
</script>
```

## Benefits

1. **Free HTTPS**: Cloudflare Tunnel provides free HTTPS (no SSL certificates needed)
2. **Secure Authentication**: Email OTP is more secure than passwords
3. **No Password Management**: No need to store passwords
4. **Easy Setup**: Automated scripts handle most configuration
5. **Multi-Course Support**: Each course gets its own tunnel and auth

## Migration from ngrok

If you're currently using ngrok:

1. Set up Cloudflare Tunnel for each course
2. Update `bot-chat.js` with Cloudflare URLs
3. Update localStorage or edit code directly
4. Test HTTPS access
5. Stop ngrok tunnels

## Next Steps

1. ✅ Configure email SMTP for all backends
2. ✅ Set up Cloudflare Tunnel for all courses
3. ✅ Update frontend bot-chat.js with Cloudflare URLs
4. ✅ Test authentication flow
5. ✅ Deploy to GitHub Pages

## Files to Review

- `docs/CLOUDFLARE-AND-AUTH-SETUP.md` - Complete setup guide
- `backend/app/services/auth_service.py` - Authentication logic
- `backend/app/services/email_service.py` - Email sending logic
- `docs/bot-login.js` - Frontend login interface
- `scripts/setup-cloudflare-tunnel.ps1` - Tunnel setup automation

