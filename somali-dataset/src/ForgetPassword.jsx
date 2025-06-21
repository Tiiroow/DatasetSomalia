// src/ForgetPassword.jsx
import React from 'react';
import './Auth.css';

function ForgetPassword() {
  const handleSubmit = (e) => {
    e.preventDefault();
    alert("Password reset link has been sent to your email.");
  };

  return (
    <div className="auth-wrapper">
      <div className="auth-form-container">
        <h2>Reset Password</h2>
        <form className="auth-form" onSubmit={handleSubmit}>
          <label>Email Address</label>
          <input type="email" placeholder="Enter your email" required />
          <button className="submit-btn" type="submit">Send Reset Link</button>
        </form>
      </div>
    </div>
  );
}

export default ForgetPassword;
