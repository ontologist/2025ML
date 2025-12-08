# Copy Frontend Bot Files to Other Course Repos

This guide shows you exactly what files to copy from the ML-101 repo to your other course repos.

## Files to Copy

Copy these files from `2025ML/docs/` to your other course repo's `docs/` directory:

### 1. **`bot-chat.js`** (Required)
- **Location:** `docs/bot-chat.js`
- **Purpose:** Contains all the chat interface logic
- **Modifications needed:** Update the API URL (see below)

### 2. **CSS Styles** (Required)
- **Location:** `docs/styles.css`
- **Purpose:** Bot interface styling
- **Action:** Copy the bot-related CSS sections (lines ~441-738)
- **OR:** Copy the entire `styles.css` if you want all styles

### 3. **HTML Section** (Required)
- **Location:** `docs/index.html` (lines 326-410)
- **Purpose:** Bot portal HTML structure
- **Action:** Copy the bot portal section and paste into your course's HTML file

---

## Step-by-Step Instructions

### Step 1: Copy `bot-chat.js`

1. **Copy the file:**
   ```powershell
   # From ML-101 repo
   Copy-Item "C:\Users\yuri\OneDrive\Documents\GitHub\2025ML\docs\bot-chat.js" -Destination "C:\path\to\course2-repo\docs\bot-chat.js"
   ```

2. **Edit `bot-chat.js` - Update API URL:**
   
   Find this section (around line 16-37):
   ```javascript
   getApiUrl() {
       const isLocal = window.location.hostname === 'localhost';
       const isHttps = window.location.protocol === 'https:';
       
       if (isLocal) {
           return 'http://localhost:8001/api'; // ⚠️ CHANGE THIS
       } else if (isHttps) {
           return 'https://8073b9e974bf.ngrok-free.app/api'; // ⚠️ CHANGE THIS
       } else {
           return 'http://192.218.175.132:8001/api'; // ⚠️ CHANGE THIS
       }
   }
   ```
   
   **For Course 2, change to:**
   ```javascript
   getApiUrl() {
       const isLocal = window.location.hostname === 'localhost';
       const isHttps = window.location.protocol === 'https:';
       
       if (isLocal) {
           return 'http://localhost:8002/api'; // Course 2 port
       } else if (isHttps) {
           return 'https://YOUR_COURSE2_HTTPS_URL/api'; // Your Course 2 HTTPS URL
       } else {
           return 'http://192.218.175.132:8002/api'; // Course 2 port
       }
   }
   ```
   
   **For Course 3, change to:**
   ```javascript
   getApiUrl() {
       const isLocal = window.location.hostname === 'localhost';
       const isHttps = window.location.protocol === 'https:';
       
       if (isLocal) {
           return 'http://localhost:8003/api'; // Course 3 port
       } else if (isHttps) {
           return 'https://YOUR_COURSE3_HTTPS_URL/api'; // Your Course 3 HTTPS URL
       } else {
           return 'http://192.218.175.132:8003/api'; // Course 3 port
       }
   }
   ```

3. **Optional: Update class name and welcome message:**
   
   You can rename the class if you want (line 4):
   ```javascript
   class Course2BotChat {  // Instead of ML101BotChat
   ```
   
   And update the initialization (line 308):
   ```javascript
   window.course2BotChat = new Course2BotChat();  // Instead of ml101BotChat
   ```

### Step 2: Copy CSS Styles

**Option A: Copy Bot Styles Only** (Recommended if you have existing styles)

1. Open `docs/styles.css` from ML-101 repo
2. Find lines ~441-738 (all styles starting with `.bot-`)
3. Copy those sections
4. Paste into your course's `styles.css` file

**Key CSS sections to copy:**
```css
/* Bot Notice */
.bot-notice { ... }

/* Bot Chat Container */
.bot-chat-container { ... }
.bot-chat-header { ... }
.bot-chat-controls { ... }

/* Bot Messages */
.bot-messages { ... }
.bot-message { ... }
.bot-message-user { ... }
.bot-message-assistant { ... }
.bot-message-content { ... }

/* Bot Loading */
.bot-loading { ... }
.bot-loading-indicator { ... }

/* Bot Input */
.bot-chat-input-container { ... }
.bot-message-input { ... }
.bot-send-btn { ... }

/* Bot Footer */
.bot-chat-footer { ... }

/* Mobile Responsive */
@media (max-width: 768px) { ... }
```

**Option B: Copy Entire `styles.css`** (If starting fresh)
- Just copy the entire file if you don't have existing styles

### Step 3: Copy HTML Section

1. **Open `docs/index.html` from ML-101 repo**
2. **Copy the bot portal section** (lines 326-410):
   ```html
   <section id="bot-portal" class="section">
       <h2>🤖 ML-101 Bot Portal / ボットポータル</h2>
       
       <!-- HTTPS Setup Notice -->
       <div id="bot-https-notice" class="bot-notice" style="display: none;">
           ...
       </div>
       
       <!-- Chat Interface -->
       <div id="bot-chat-container" class="bot-chat-container" data-lang="en">
           ...
       </div>
       
       <!-- Additional Bot Features -->
       <div class="guides-grid" style="margin-top: 30px;">
           ...
       </div>
   </section>
   ```

3. **Paste into your course's HTML file** (e.g., `index.html` or `docs/index.html`)

4. **Customize the HTML:**
   - Change "ML-101 Bot" to your course bot name
   - Update welcome messages
   - Adjust footer text if needed
   - Update any course-specific links

5. **Add the script tag** to your HTML `<head>` section:
   ```html
   <head>
       ...
       <script src="bot-chat.js" defer></script>
   </head>
   ```

6. **Add navigation link** (if you have a nav menu):
   ```html
   <nav>
       ...
       <a href="#bot-portal">Course Bot</a>
   </nav>
   ```

---

## Complete File Checklist

### For Course 2 Repo:
- [ ] Copy `bot-chat.js` → `docs/bot-chat.js`
- [ ] Update API URLs in `bot-chat.js` (port 8002)
- [ ] Copy bot CSS styles → `docs/styles.css`
- [ ] Copy bot HTML section → `docs/index.html` (or your main HTML file)
- [ ] Add `<script src="bot-chat.js" defer></script>` to HTML `<head>`
- [ ] Add navigation link to bot portal
- [ ] Customize bot name and welcome messages

### For Course 3 Repo:
- [ ] Copy `bot-chat.js` → `docs/bot-chat.js`
- [ ] Update API URLs in `bot-chat.js` (port 8003)
- [ ] Copy bot CSS styles → `docs/styles.css`
- [ ] Copy bot HTML section → `docs/index.html` (or your main HTML file)
- [ ] Add `<script src="bot-chat.js" defer></script>` to HTML `<head>`
- [ ] Add navigation link to bot portal
- [ ] Customize bot name and welcome messages

---

## Example: Minimal Integration

If you want a minimal integration, here's what you need:

### Minimal HTML:
```html
<!DOCTYPE html>
<html>
<head>
    <title>Course 2</title>
    <link rel="stylesheet" href="styles.css">
    <script src="bot-chat.js" defer></script>
</head>
<body>
    <h1>Course 2</h1>
    
    <!-- Bot Portal Section -->
    <section id="bot-portal">
        <h2>🤖 Course 2 Bot</h2>
        <div id="bot-chat-container" class="bot-chat-container" data-lang="en">
            <div class="bot-chat-header">
                <h3>💬 Chat with Course 2 Bot</h3>
                <div class="bot-chat-controls">
                    <label>
                        Language:
                        <select id="bot-language-toggle">
                            <option value="en">English</option>
                            <option value="ja">日本語</option>
                        </select>
                    </label>
                </div>
            </div>
            <div id="bot-messages" class="bot-messages">
                <div class="bot-message bot-message-system">
                    <div class="bot-message-content bot-message-welcome">
                        <strong>Welcome to Course 2 Bot!</strong><br>
                        Ask me anything about the course.
                    </div>
                </div>
            </div>
            <div id="bot-loading" class="bot-loading" style="display: none;">
                <div class="bot-loading-indicator">
                    <span></span><span></span><span></span>
                </div>
                <span class="bot-loading-text">Bot is thinking...</span>
            </div>
            <div class="bot-chat-input-container">
                <textarea 
                    id="bot-message-input" 
                    class="bot-message-input" 
                    placeholder="Type your question here..."
                    rows="2"
                ></textarea>
                <button id="bot-send-btn" class="btn btn-primary bot-send-btn">Send</button>
            </div>
        </div>
    </section>
</body>
</html>
```

### Minimal CSS (add to your styles.css):
Copy all the `.bot-*` styles from ML-101's `styles.css`.

---

## Testing Checklist

After copying files:

1. **Test locally:**
   - Start the backend for that course (port 8002 or 8003)
   - Open the HTML file locally
   - Try sending a message

2. **Test on GitHub Pages:**
   - Commit and push files
   - Wait for GitHub Pages to update
   - Visit the bot portal section
   - Try sending a message

3. **Check browser console:**
   - Open Developer Tools (F12)
   - Check for any JavaScript errors
   - Verify API requests are going to the correct URL

---

## Troubleshooting

**Problem:** Bot not appearing
- Check that `bot-chat.js` is loaded (check browser console)
- Verify the script tag is in the HTML `<head>`

**Problem:** "Cannot connect to API"
- Check that backend is running on the correct port
- Verify API URL in `bot-chat.js` matches your backend port
- Check firewall settings

**Problem:** Mixed content error (HTTPS page trying to access HTTP)
- Set up HTTPS for the backend (see `docs/HTTPS-SETUP.md`)
- Update the HTTPS URL in `bot-chat.js`

**Problem:** Styles not working
- Verify CSS is loaded
- Check that all `.bot-*` styles are in your `styles.css`
- Check browser console for CSS errors

---

## Quick Reference: File Locations

| File | ML-101 Source | Destination |
|------|--------------|-------------|
| JavaScript | `docs/bot-chat.js` | `docs/bot-chat.js` |
| CSS (bot styles) | `docs/styles.css` (lines 441-738) | `docs/styles.css` |
| HTML (bot section) | `docs/index.html` (lines 326-410) | Your HTML file |

---

**Need help?** Check the main setup guide: `docs/MULTI-COURSE-SETUP.md`

