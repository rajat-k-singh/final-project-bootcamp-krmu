# 🔐 Security Setup Guide

This document outlines the security measures implemented in the Travel Agency App to protect sensitive information.

## 🛡️ Security Measures Implemented

### 1. Environment Variables
All sensitive data has been moved to environment variables:

- **API Keys**: Flight API keys and Aviation Stack API keys
- **Database URIs**: MongoDB connection strings
- **JWT Secrets**: Authentication token secrets
- **Passwords**: Default user passwords for development
- **Server Configuration**: Port numbers and environment settings

### 2. Files Secured

#### Server-side Secrets:
- ✅ **JWT Secret**: `process.env.JWT_SECRET`
- ✅ **Database URI**: `process.env.MONGO_URI`
- ✅ **Server Port**: `process.env.PORT`
- ✅ **Default Passwords**: `process.env.ADMIN_PASSWORD`, `process.env.USER_PASSWORD`

#### Client-side Secrets:
- ✅ **API Base URL**: `process.env.REACT_APP_API_BASE_URL`
- ✅ **Flight API Key**: `process.env.REACT_APP_FLIGHT_API_KEY`
- ✅ **Aviation Stack API Key**: `process.env.REACT_APP_AVIATION_STACK_API_KEY`

### 3. Files Updated

#### Server Files:
- `server/config/db.js` - Database connection
- `server/seeder.js` - Default user passwords
- `server/server.js` - Port configuration (already using env vars)

#### Client Files:
- `client/src/services/api.js` - API base URL and flight API key
- `client/src/services/freeFlightsAPI.js` - Aviation Stack API key
- `client/src/pages/Dashboard.js` - API endpoints
- `client/src/pages/PackageDetails.js` - API endpoints
- `client/src/pages/AddPackage.js` - API endpoints
- `client/src/pages/Login.js` - API endpoints
- `client/src/pages/Register.js` - API endpoints

## 🚀 Quick Setup

### 1. Create Environment File
```bash
# Run the setup script
./setup-env.sh
```

### 2. Edit Environment Variables
Edit the `.env` file created in the root directory:

```env
# Server Configuration
PORT=5001
NODE_ENV=development

# Database Configuration
MONGO_URI=mongodb://localhost:27017/travel-agency

# JWT Configuration
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production

# API Keys
FLIGHT_API_KEY=689b0813ee7a9992a776e96a
AVIATION_STACK_API_KEY=YOUR_AVIATION_STACK_KEY

# Default User Passwords (for development only)
ADMIN_PASSWORD=admin123
USER_PASSWORD=user123

# Client Configuration
REACT_APP_API_BASE_URL=http://localhost:5001/api
REACT_APP_FLIGHT_API_KEY=689b0813ee7a9992a776e96a
REACT_APP_AVIATION_STACK_API_KEY=YOUR_AVIATION_STACK_KEY
```

### 3. Security Recommendations

#### For Development:
- ✅ Use the provided default values for quick setup
- ✅ Change the JWT_SECRET to a strong, unique value
- ✅ Update API keys if you have your own

#### For Production:
- 🔒 **Change ALL default values**
- 🔒 **Use strong, unique JWT secrets**
- 🔒 **Use production database URIs**
- 🔒 **Use your own API keys**
- 🔒 **Remove default passwords**
- 🔒 **Set NODE_ENV=production**

## 📁 File Structure

```
travel-agency/
├── .env                    # Environment variables (not in git)
├── .env.example           # Example environment file
├── .gitignore             # Includes .env files
├── setup-env.sh           # Setup script
├── SECURITY_SETUP.md      # This file
├── server/
│   ├── .env               # Server-specific env (optional)
│   └── ...
└── client/
    └── ...
```

## 🔍 Verification

To verify that all secrets are properly secured:

1. **Check for hardcoded values:**
   ```bash
   grep -r "689b0813ee7a9992a776e96a" src/
   grep -r "admin123" src/
   grep -r "localhost:5001" src/
   ```

2. **Verify environment variables are used:**
   ```bash
   grep -r "process.env" src/
   ```

## ⚠️ Important Notes

- **Never commit `.env` files** - They are automatically ignored by git
- **Use different values for production** - Never use development values in production
- **Rotate secrets regularly** - Change API keys and JWT secrets periodically
- **Monitor for security updates** - Keep dependencies updated

## 🆘 Troubleshooting

### Common Issues:

1. **"process.env is undefined"**
   - Ensure you're using `REACT_APP_` prefix for client-side variables
   - Restart the development server after changing .env

2. **"Cannot connect to database"**
   - Check `MONGO_URI` in your .env file
   - Ensure MongoDB is running

3. **"JWT verification failed"**
   - Check `JWT_SECRET` in your .env file
   - Ensure the secret is consistent across server restarts

### Getting Help:
- Check the main README.md for setup instructions
- Run `./setup-env.sh` for automatic environment setup
- Verify all environment variables are properly set
