# Site-Wide Authentication Setup Guide

This guide explains how to set up email OTP authentication that protects the entire GitHub Pages site, restricting access to only `@kwansei.ac.jp` email addresses.

## Overview

The authentication system:
- ✅ Protects the entire site (not just the bot)
- ✅ Only allows `@kwansei.ac.jp` email addresses
- ✅ Uses one-time password (OTP) sent via email
- ✅ Stores session for 24 hours
- ✅ Works on both 2025ML and 2025HCI sites

## Files Added

1. **`site-auth.js`** - Site-wide authentication JavaScript
2. **`styles.css`** - Updated with site-auth CSS styles
3. **`index.html`** - Updated to include site-auth.js

## Backend Changes

The backend has been updated to validate email domains:
- `backend/app/services/auth_service.py` - Added `_validate_email_domain()` method
- Both `send_otp()` and `verify_otp()` now check for `@kwansei.ac.jp` domain

## Setup for 2025ML (Already Done)

✅ Files updated:
- `docs/site-auth.js` - Created
- `docs/styles.css` - Site-auth styles added
- `docs/index.html` - site-auth.js script added

## Setup for 2025HCI

### Step 1: Copy Files

Copy these files from `2025ML/docs/` to `2025HCI/docs/`:

```powershell
# Copy site-auth.js
Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\site-auth.js" `
    -Destination "C:\Users\yuri\OneDrive\Documents\GitHub\2025HCI\docs\site-auth.js"

# Copy updated styles.css (or just add the site-auth CSS section)
# See Step 2 below
```

### Step 2: Add CSS Styles

Add the site-auth CSS to `2025HCI/docs/styles.css`. 

**Option A:** Copy the entire site-auth CSS section from `2025ML/docs/styles.css` (lines ~1-200, the section starting with `/* Site-Wide Authentication Styles */`)

**Option B:** Add this CSS block to your existing `styles.css`:

```css
/* Site-Wide Authentication Styles */
.site-auth-modal {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.85);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 10000;
    animation: fadeIn 0.3s ease-in;
}

.site-auth-content {
    background-color: var(--bg-white, #ffffff);
    border-radius: 12px;
    padding: 40px;
    max-width: 480px;
    width: 90%;
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3);
    animation: slideUp 0.3s ease-out;
}

/* ... (see 2025ML/docs/styles.css for full CSS) ... */
```

### Step 3: Update HTML

Add the site-auth script to your main HTML file (e.g., `index.html`) in the `<head>` section:

```html
<head>
    <!-- ... existing head content ... -->
    <link rel="stylesheet" href="styles.css">
    <script src="site-auth.js" defer></script>
    <!-- Other scripts can go after site-auth.js -->
</head>
```

**Important:** `site-auth.js` should be loaded BEFORE other scripts that depend on authentication.

### Step 4: Update API URL (if needed)

The `site-auth.js` automatically detects the API URL based on:
- Hostname (checks for 'hci' or '2025hci')
- Pathname
- localStorage `bot_cloudflare_url`

If your HCI Cloudflare URL is different, you can set it in localStorage:

```javascript
localStorage.setItem('bot_cloudflare_url', 'https://hcibot.tijerino.ai');
```

Or update the `getApiUrl()` function in `site-auth.js` for HCI.

### Step 5: Test

1. Open your HCI site in a browser
2. You should see the login modal
3. Try entering a non-kwansei.ac.jp email - should show error
4. Enter a valid `@kwansei.ac.jp` email
5. Check email for OTP code
6. Enter OTP code
7. Site content should appear after successful login

## How It Works

1. **Page Load**: `site-auth.js` checks for valid session in localStorage
2. **No Session**: Shows login modal, hides all content
3. **Email Entry**: Validates domain (must be `@kwansei.ac.jp`)
4. **OTP Request**: Sends request to backend `/auth/send-otp`
5. **OTP Verification**: User enters code, backend verifies via `/auth/verify-otp`
6. **Session Created**: Stores session in localStorage (24 hour expiry)
7. **Content Shown**: Hides login modal, shows all site content

## Session Management

- **Storage**: localStorage key `site_auth_session`
- **Expiry**: 24 hours from login
- **Logout**: Call `window.siteAuth.logout()` or clear localStorage

## Backend Requirements

Make sure your backend has:
1. Email service configured (SMTP settings in `.env`)
2. Redis running (for OTP storage) or it will use in-memory fallback
3. Auth endpoints available:
   - `POST /auth/send-otp`
   - `POST /auth/verify-otp`

## Troubleshooting

### Login modal doesn't appear
- Check browser console for JavaScript errors
- Verify `site-auth.js` is loaded (check Network tab)
- Make sure script is in `<head>` with `defer` attribute

### "Only @kwansei.ac.jp emails allowed" error
- This is expected for non-kwansei.ac.jp emails
- Backend validates domain on both send and verify

### OTP not received
- Check spam folder
- Verify email service is configured in backend `.env`
- Check backend logs for email sending errors

### Content still hidden after login
- Check localStorage for `site_auth_session`
- Verify session hasn't expired
- Check browser console for errors

## Customization

### Change Allowed Domain

Edit `backend/app/services/auth_service.py`:

```python
def _validate_email_domain(self, email: str) -> bool:
    allowed_domain = "yourdomain.ac.jp"  # Change this
    email_domain = email.split("@")[-1].lower() if "@" in email else ""
    return email_domain == allowed_domain
```

Also update `site-auth.js`:

```javascript
this.allowedDomain = 'yourdomain.ac.jp';  // Change this
```

### Change Session Duration

Edit `site-auth.js`:

```javascript
expiresAt: Date.now() + (24 * 60 * 60 * 1000)  // Change 24 to desired hours
```

## Security Notes

- OTP codes expire after 10 minutes
- Maximum 5 verification attempts per OTP
- Session stored in localStorage (not httpOnly cookies)
- Domain validation on both client and server
- OTP codes are single-use (deleted after verification)

