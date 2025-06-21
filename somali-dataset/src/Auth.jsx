import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Auth.css';

function Auth() {
  const [isSignup, setIsSignup] = useState(false);
  const [formData, setFormData] = useState({
    fullName: '',
    email: '',
    password: '',
    confirmPassword: ''
  });
  const [error, setError] = useState('');
  const navigate = useNavigate();

  const toggleForm = () => {
    setIsSignup(!isSignup);
    setError('');
  };

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    if (!passwordRegex.test(formData.password)) {
      setError('Password must be at least 8 characters and contain a number and a letter.');
      return;
    }

    if (isSignup && formData.password !== formData.confirmPassword) {
      setError('Passwords do not match.');
      return;
    }

    // Proceed
    alert(isSignup ? 'Signed up!' : 'Signed in!');
    navigate('/profile'); // Redirect
  };

  return (
    <div className="auth-container">
      <form className="auth-form" onSubmit={handleSubmit}>
        <div className="auth-header">
          <h2>{isSignup ? 'Sign Up' : 'Log In'}</h2>
          <button type="button" className="toggle-link" onClick={toggleForm}>
            {isSignup ? 'Sign in' : 'Sign up'}
          </button>
        </div>

        {isSignup && (
          <>
            <label>Full Name</label>
            <input
              type="text"
              name="fullName"
              placeholder="Full Name"
              value={formData.fullName}
              onChange={handleChange}
              required
            />
          </>
        )}

        <label>Email Address</label>
        <input
          type="email"
          name="email"
          placeholder="Email Address"
          value={formData.email}
          onChange={handleChange}
          required
        />

        <label>Password</label>
        <input
          type="password"
          name="password"
          placeholder="Password"
          value={formData.password}
          onChange={handleChange}
          required
        />

        {!isSignup && (
          <p>
  Forgot your password?{' '}
  <a href="/reset-password" className="link-text">Reset here</a>
</p>
        )}


        {isSignup && (
          <>
            <label>Confirm Password</label>
            <input
              type="password"
              name="confirmPassword"
              placeholder="Confirm Password"
              value={formData.confirmPassword}
              onChange={handleChange}
              required
            />
          </>
        )}

        {error && <p className="error">{error}</p>}

        <button type="submit" className="submit-btn">
          {isSignup ? 'Sign up' : 'Sign in'}
        </button>
      </form>
    </div>
  );
}

export default Auth;
