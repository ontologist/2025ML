// Bot Login Interface - Email OTP Authentication
// Handles student login via email OTP

class BotLogin {
    constructor(apiUrl, onLoginSuccess) {
        this.apiUrl = apiUrl;
        this.onLoginSuccess = onLoginSuccess;
        this.currentEmail = null;
        this.init();
    }
    
    init() {
        // Check if user is already logged in
        const storedUserId = localStorage.getItem('bot_user_id');
        const storedEmail = localStorage.getItem('bot_user_email');
        
        if (storedUserId && storedEmail) {
            // User already logged in
            this.onLoginSuccess(storedUserId, storedEmail);
            return;
        }
        
        // Show login modal
        this.showLoginModal();
    }
    
    showLoginModal() {
        // Create login modal HTML
        const modal = document.createElement('div');
        modal.id = 'bot-login-modal';
        modal.className = 'bot-login-modal';
        modal.innerHTML = `
            <div class="bot-login-content">
                <h2>Course Bot Login</h2>
                <p class="bot-login-subtitle">Enter your email to receive a verification code</p>
                
                <div id="bot-login-step-email" class="bot-login-step">
                    <form id="bot-email-form">
                        <div class="bot-form-group">
                            <label for="bot-email-input">Email Address</label>
                            <input 
                                type="email" 
                                id="bot-email-input" 
                                class="bot-input" 
                                placeholder="your.email@university.edu"
                                required
                                autocomplete="email"
                            />
                        </div>
                        <button type="submit" class="bot-btn bot-btn-primary" id="bot-send-otp-btn">
                            Send Verification Code
                        </button>
                    </form>
                    <div id="bot-email-error" class="bot-error-message" style="display: none;"></div>
                </div>
                
                <div id="bot-login-step-otp" class="bot-login-step" style="display: none;">
                    <p class="bot-otp-info">
                        Verification code sent to <strong id="bot-email-display"></strong>
                    </p>
                    <form id="bot-otp-form">
                        <div class="bot-form-group">
                            <label for="bot-otp-input">Enter Verification Code</label>
                            <input 
                                type="text" 
                                id="bot-otp-input" 
                                class="bot-input bot-otp-input" 
                                placeholder="000000"
                                maxlength="6"
                                pattern="[0-9]{6}"
                                required
                            />
                            <small class="bot-help-text">Code expires in 10 minutes</small>
                        </div>
                        <div class="bot-form-actions">
                            <button type="submit" class="bot-btn bot-btn-primary" id="bot-verify-otp-btn">
                                Verify Code
                            </button>
                            <button type="button" class="bot-btn bot-btn-secondary" id="bot-back-to-email-btn">
                                Change Email
                            </button>
                        </div>
                    </form>
                    <div id="bot-otp-error" class="bot-error-message" style="display: none;"></div>
                    <div id="bot-otp-success" class="bot-success-message" style="display: none;"></div>
                </div>
                
                <div class="bot-login-footer">
                    <p class="bot-help-text">If you don't receive a code, check your spam folder or contact support.</p>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        // Attach event listeners
        this.attachEventListeners();
    }
    
    attachEventListeners() {
        // Email form submission
        const emailForm = document.getElementById('bot-email-form');
        emailForm.addEventListener('submit', (e) => {
            e.preventDefault();
            this.handleEmailSubmit();
        });
        
        // OTP form submission
        const otpForm = document.getElementById('bot-otp-form');
        otpForm.addEventListener('submit', (e) => {
            e.preventDefault();
            this.handleOtpSubmit();
        });
        
        // Back to email button
        const backBtn = document.getElementById('bot-back-to-email-btn');
        backBtn.addEventListener('click', () => {
            this.showEmailStep();
        });
        
        // OTP input formatting (numbers only)
        const otpInput = document.getElementById('bot-otp-input');
        otpInput.addEventListener('input', (e) => {
            e.target.value = e.target.value.replace(/[^0-9]/g, '');
        });
    }
    
    async handleEmailSubmit() {
        const emailInput = document.getElementById('bot-email-input');
        const email = emailInput.value.trim();
        const sendBtn = document.getElementById('bot-send-otp-btn');
        const errorDiv = document.getElementById('bot-email-error');
        
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
        
        // Disable button and show loading
        sendBtn.disabled = true;
        sendBtn.textContent = 'Sending...';
        errorDiv.style.display = 'none';
        
        try {
            const response = await fetch(`${this.apiUrl}/auth/send-otp`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ email })
            });
            
            const data = await response.json();
            
            if (response.ok && data.success) {
                this.currentEmail = email;
                this.showOtpStep(email);
            } else {
                this.showError(errorDiv, data.message || 'Failed to send verification code');
                sendBtn.disabled = false;
                sendBtn.textContent = 'Send Verification Code';
            }
        } catch (error) {
            console.error('Error sending OTP:', error);
            this.showError(errorDiv, 'Network error. Please check your connection and try again.');
            sendBtn.disabled = false;
            sendBtn.textContent = 'Send Verification Code';
        }
    }
    
    async handleOtpSubmit() {
        const otpInput = document.getElementById('bot-otp-input');
        const otpCode = otpInput.value.trim();
        const verifyBtn = document.getElementById('bot-verify-otp-btn');
        const errorDiv = document.getElementById('bot-otp-error');
        
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
            const response = await fetch(`${this.apiUrl}/auth/verify-otp`, {
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
                localStorage.setItem('bot_user_id', data.user_id);
                localStorage.setItem('bot_user_email', data.email);
                
                // Show success message briefly
                const successDiv = document.getElementById('bot-otp-success');
                successDiv.textContent = 'Login successful! Redirecting...';
                successDiv.style.display = 'block';
                
                // Close modal and call success callback
                setTimeout(() => {
                    this.closeLoginModal();
                    this.onLoginSuccess(data.user_id, data.email);
                }, 1000);
            } else {
                this.showError(errorDiv, data.message || 'Invalid verification code');
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
        document.getElementById('bot-login-step-email').style.display = 'block';
        document.getElementById('bot-login-step-otp').style.display = 'none';
        document.getElementById('bot-email-input').value = '';
        document.getElementById('bot-otp-input').value = '';
        this.currentEmail = null;
    }
    
    showOtpStep(email) {
        document.getElementById('bot-login-step-email').style.display = 'none';
        document.getElementById('bot-login-step-otp').style.display = 'block';
        document.getElementById('bot-email-display').textContent = email;
        document.getElementById('bot-otp-input').focus();
        
        // Re-enable send button
        const sendBtn = document.getElementById('bot-send-otp-btn');
        sendBtn.disabled = false;
        sendBtn.textContent = 'Send Verification Code';
    }
    
    showError(errorDiv, message) {
        errorDiv.textContent = message;
        errorDiv.style.display = 'block';
    }
    
    closeLoginModal() {
        const modal = document.getElementById('bot-login-modal');
        if (modal) {
            modal.remove();
        }
    }
    
    logout() {
        localStorage.removeItem('bot_user_id');
        localStorage.removeItem('bot_user_email');
        this.showLoginModal();
    }
}

