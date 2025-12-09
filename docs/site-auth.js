// Site-Wide Authentication System
// Protects entire GitHub Pages site with email OTP authentication
// Only allows @kwansei.ac.jp email addresses

class SiteAuth {
    constructor(apiUrl) {
        this.apiUrl = apiUrl;
        this.allowedDomain = 'kwansei.ac.jp';
        this.storageKey = 'site_auth_session';
        this.init();
    }
    
    init() {
        // Check if user is already authenticated
        const session = this.getSession();
        if (session && this.isSessionValid(session)) {
            // User is authenticated, show content
            this.showContent();
            return;
        }
        
        // User not authenticated - ensure content is hidden and show login
        // Force hide content first
        this.hideContent();
        
        // Small delay to ensure DOM is ready, then show modal
        setTimeout(() => {
            this.showLoginModal();
        }, 50);
    }
    
    getSession() {
        try {
            const sessionStr = localStorage.getItem(this.storageKey);
            if (!sessionStr) return null;
            return JSON.parse(sessionStr);
        } catch (e) {
            return null;
        }
    }
    
    saveSession(userId, email) {
        const session = {
            userId,
            email,
            timestamp: Date.now(),
            expiresAt: Date.now() + (24 * 60 * 60 * 1000) // 24 hours
        };
        localStorage.setItem(this.storageKey, JSON.stringify(session));
    }
    
    clearSession() {
        localStorage.removeItem(this.storageKey);
    }
    
    isSessionValid(session) {
        if (!session || !session.expiresAt) return false;
        return Date.now() < session.expiresAt;
    }
    
    validateEmailDomain(email) {
        const domain = email.split('@')[1]?.toLowerCase();
        return domain === this.allowedDomain;
    }
    
    hideContent() {
        // Remove auth-verified class from html to hide content (CSS handles it)
        if (document.documentElement) {
            document.documentElement.classList.remove('auth-verified');
        }
        
        // Aggressively hide all content elements
        const body = document.body;
        if (!body) return;
        
        // Hide all direct children of body except the auth modal
        const children = Array.from(body.children);
        children.forEach(child => {
            if (child.id !== 'site-auth-modal') {
                child.style.display = 'none';
                child.style.visibility = 'hidden';
                child.setAttribute('data-auth-hidden', 'true');
            }
        });
    }
    
    showContent() {
        // Show all content by adding auth-verified class to html
        if (!document.documentElement) return;
        
        document.documentElement.classList.add('auth-verified');
        
        // Restore all hidden elements
        const hiddenElements = document.body.querySelectorAll('[data-auth-hidden="true"]');
        hiddenElements.forEach(el => {
            el.style.display = '';
            el.style.visibility = '';
            el.removeAttribute('data-auth-hidden');
        });
        
        // Also explicitly show common elements
        const header = document.body.querySelector('header');
        const nav = document.body.querySelector('nav');
        const main = document.body.querySelector('main');
        const footer = document.body.querySelector('footer');
        
        if (header) {
            header.style.display = '';
            header.style.visibility = '';
        }
        if (nav) {
            nav.style.display = '';
            nav.style.visibility = '';
        }
        if (main) {
            main.style.display = '';
            main.style.visibility = '';
        }
        if (footer) {
            footer.style.display = '';
            footer.style.visibility = '';
        }
        
        // Remove login modal if exists
        const modal = document.getElementById('site-auth-modal');
        if (modal) {
            modal.remove();
        }
    }
    
    showLoginModal() {
        // Ensure content is hidden first
        this.hideContent();
        
        // Remove existing modal if any
        const existing = document.getElementById('site-auth-modal');
        if (existing) existing.remove();
        
        // Create modal
        const modal = document.createElement('div');
        modal.id = 'site-auth-modal';
        modal.className = 'site-auth-modal';
        modal.innerHTML = `
            <div class="site-auth-content">
                <div class="site-auth-header">
                    <h2>Course Access</h2>
                    <p class="site-auth-subtitle">Please sign in with your Kwansei Gakuin University email</p>
                    <p class="site-auth-domain-hint">Only @kwansei.ac.jp email addresses are allowed</p>
                </div>
                
                <div id="site-auth-step-email" class="site-auth-step">
                    <form id="site-email-form">
                        <div class="site-form-group">
                            <label for="site-email-input">Email Address</label>
                            <input 
                                type="email" 
                                id="site-email-input" 
                                class="site-input" 
                                placeholder="your.name@kwansei.ac.jp"
                                required
                                autocomplete="email"
                                autofocus
                            />
                            <small class="site-help-text">Must be a @kwansei.ac.jp email address</small>
                        </div>
                        <button type="submit" class="site-btn site-btn-primary" id="site-send-otp-btn">
                            Send Verification Code
                        </button>
                    </form>
                    <div id="site-email-error" class="site-error-message" style="display: none;"></div>
                </div>
                
                <div id="site-auth-step-otp" class="site-auth-step" style="display: none;">
                    <p class="site-otp-info">
                        Verification code sent to <strong id="site-email-display"></strong>
                    </p>
                    <form id="site-otp-form">
                        <div class="site-form-group">
                            <label for="site-otp-input">Enter Verification Code</label>
                            <input 
                                type="text" 
                                id="site-otp-input" 
                                class="site-input site-otp-input" 
                                placeholder="000000"
                                maxlength="6"
                                pattern="[0-9]{6}"
                                required
                                autofocus
                            />
                            <small class="site-help-text">Code expires in 10 minutes</small>
                        </div>
                        <div class="site-form-actions">
                            <button type="submit" class="site-btn site-btn-primary" id="site-verify-otp-btn">
                                Verify Code
                            </button>
                            <button type="button" class="site-btn site-btn-secondary" id="site-back-to-email-btn">
                                Change Email
                            </button>
                        </div>
                    </form>
                    <div id="site-otp-error" class="site-error-message" style="display: none;"></div>
                    <div id="site-otp-success" class="site-success-message" style="display: none;"></div>
                </div>
                
                <div class="site-auth-footer">
                    <p class="site-help-text">If you don't receive a code, check your spam folder or contact your instructor.</p>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        this.attachEventListeners();
    }
    
    attachEventListeners() {
        // Email form submission
        const emailForm = document.getElementById('site-email-form');
        if (emailForm) {
            emailForm.addEventListener('submit', (e) => {
                e.preventDefault();
                this.handleEmailSubmit();
            });
        }
        
        // OTP form submission
        const otpForm = document.getElementById('site-otp-form');
        if (otpForm) {
            otpForm.addEventListener('submit', (e) => {
                e.preventDefault();
                this.handleOtpSubmit();
            });
        }
        
        // Back to email button
        const backBtn = document.getElementById('site-back-to-email-btn');
        if (backBtn) {
            backBtn.addEventListener('click', () => {
                this.showEmailStep();
            });
        }
        
        // OTP input formatting (numbers only)
        const otpInput = document.getElementById('site-otp-input');
        if (otpInput) {
            otpInput.addEventListener('input', (e) => {
                e.target.value = e.target.value.replace(/[^0-9]/g, '');
            });
        }
    }
    
    async handleEmailSubmit() {
        const emailInput = document.getElementById('site-email-input');
        const email = emailInput.value.trim();
        const sendBtn = document.getElementById('site-send-otp-btn');
        const errorDiv = document.getElementById('site-email-error');
        
        // Debug: Log API URL
        console.log('[SiteAuth] API URL:', this.apiUrl);
        console.log('[SiteAuth] Full endpoint:', `${this.apiUrl}/api/auth/send-otp`);
        
        if (!email) {
            this.showError(errorDiv, 'Please enter your email address');
            return;
        }
        
        // Validate email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            this.showError(errorDiv, 'Please enter a valid email address');
            return;
        }
        
        // Validate domain
        if (!this.validateEmailDomain(email)) {
            this.showError(errorDiv, `Only @${this.allowedDomain} email addresses are allowed. Your email domain is not authorized.`);
            return;
        }
        
        // Disable button and show loading
        sendBtn.disabled = true;
        sendBtn.textContent = 'Sending...';
        errorDiv.style.display = 'none';
        
        try {
            const response = await fetch(`${this.apiUrl}/api/auth/send-otp`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ email })
            });
            
            // Check if response is OK before trying to parse JSON
            if (!response.ok) {
                // Try to get error message from response
                let errorMessage = 'Failed to send verification code';
                try {
                    const errorData = await response.json();
                    errorMessage = errorData.message || errorData.detail || errorMessage;
                } catch (e) {
                    // If response is not JSON, use status text
                    errorMessage = `Server error (${response.status}): ${response.statusText}`;
                }
                this.showError(errorDiv, errorMessage);
                sendBtn.disabled = false;
                sendBtn.textContent = 'Send Verification Code';
                return;
            }
            
            const data = await response.json();
            
            if (data.success) {
                this.currentEmail = email;
                this.showOtpStep(email);
            } else {
                this.showError(errorDiv, data.message || data.detail || 'Failed to send verification code');
                sendBtn.disabled = false;
                sendBtn.textContent = 'Send Verification Code';
            }
        } catch (error) {
            console.error('Error sending OTP:', error);
            let errorMessage = 'Network error. Please check your connection and try again.';
            if (error.message) {
                errorMessage = `Connection error: ${error.message}`;
            }
            this.showError(errorDiv, errorMessage);
            sendBtn.disabled = false;
            sendBtn.textContent = 'Send Verification Code';
        }
    }
    
    async handleOtpSubmit() {
        const otpInput = document.getElementById('site-otp-input');
        const otpCode = otpInput.value.trim();
        const verifyBtn = document.getElementById('site-verify-otp-btn');
        const errorDiv = document.getElementById('site-otp-error');
        
        if (!otpCode || otpCode.length !== 6) {
            this.showError(errorDiv, 'Please enter the 6-digit verification code');
            return;
        }
        
        if (!this.currentEmail) {
            this.showError(errorDiv, 'Email not found. Please start over.');
            return;
        }
        
        // Disable button and show loading
        verifyBtn.disabled = true;
        verifyBtn.textContent = 'Verifying...';
        errorDiv.style.display = 'none';
        
        try {
            const response = await fetch(`${this.apiUrl}/api/auth/verify-otp`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    email: this.currentEmail,
                    otp_code: otpCode
                })
            });
            
            const data = await response.json();
            
            if (response.ok && data.success) {
                // Login successful
                this.saveSession(data.user_id, data.email);
                
                // Show success message briefly
                const successDiv = document.getElementById('site-otp-success');
                if (successDiv) {
                    successDiv.textContent = 'Login successful! Loading content...';
                    successDiv.style.display = 'block';
                }
                
                // Show content
                setTimeout(() => {
                    this.showContent();
                }, 500);
            } else {
                this.showError(errorDiv, data.message || data.detail || 'Invalid verification code');
                verifyBtn.disabled = false;
                verifyBtn.textContent = 'Verify Code';
                // Clear OTP input on error
                otpInput.value = '';
            }
        } catch (error) {
            console.error('Error verifying OTP:', error);
            this.showError(errorDiv, 'Network error. Please check your connection and try again.');
            verifyBtn.disabled = false;
            verifyBtn.textContent = 'Verify Code';
        }
    }
    
    showEmailStep() {
        document.getElementById('site-auth-step-email').style.display = 'block';
        document.getElementById('site-auth-step-otp').style.display = 'none';
        const emailInput = document.getElementById('site-email-input');
        const otpInput = document.getElementById('site-otp-input');
        if (emailInput) emailInput.value = '';
        if (otpInput) otpInput.value = '';
        this.currentEmail = null;
    }
    
    showOtpStep(email) {
        document.getElementById('site-auth-step-email').style.display = 'none';
        document.getElementById('site-auth-step-otp').style.display = 'block';
        document.getElementById('site-email-display').textContent = email;
        const otpInput = document.getElementById('site-otp-input');
        if (otpInput) otpInput.focus();
        
        // Re-enable send button
        const sendBtn = document.getElementById('site-send-otp-btn');
        if (sendBtn) {
            sendBtn.disabled = false;
            sendBtn.textContent = 'Send Verification Code';
        }
    }
    
    showError(errorDiv, message) {
        if (errorDiv) {
            errorDiv.textContent = message;
            errorDiv.style.display = 'block';
        }
    }
    
    logout() {
        this.clearSession();
        this.hideContent();
        this.showLoginModal();
    }
}

// Initialize site authentication
// This runs as soon as the script loads
(function() {
    // Get API URL based on current site
    function getApiUrl() {
        const hostname = window.location.hostname;
        const isLocal = hostname === 'localhost' || hostname === '127.0.0.1';
        const isHttps = window.location.protocol === 'https:';
        
        // Try to get from localStorage first
        const cloudflareUrl = localStorage.getItem('bot_cloudflare_url');
        if (cloudflareUrl) {
            return cloudflareUrl;
        }
        
        // Detect course based on hostname or path
        const isHCI = hostname.includes('2025hci') || hostname.includes('hci') || 
                      window.location.pathname.includes('2025HCI') || 
                      window.location.pathname.includes('hci');
        
        if (isLocal) {
            // Local development - use appropriate port
            return isHCI ? 'http://localhost:8002' : 'http://localhost:8001';
        } else if (isHttps) {
            // Production - use Cloudflare URLs
            if (isHCI) {
                return 'https://hcibot.tijerino.ai'; // Update this when HCI tunnel is set up
            } else {
                return 'https://ml101bot.tijerino.ai';
            }
        } else {
            // HTTP - use fixed IP
            return isHCI ? 'http://192.218.175.132:8002' : 'http://192.218.175.132:8001';
        }
    }
    
    // Initialize auth when DOM is ready
    function initAuth() {
        // Initialize authentication
        window.siteAuth = new SiteAuth(getApiUrl());
    }
    
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initAuth);
    } else {
        // DOM already ready, initialize immediately
        initAuth();
    }
})();

