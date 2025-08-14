#!/bin/bash

# Setup script for environment variables
echo "🚀 Setting up environment variables for Travel Agency App..."

# Check if .env file already exists
if [ -f ".env" ]; then
    echo "⚠️  .env file already exists. Backing up to .env.backup"
    cp .env .env.backup
fi

# Create .env file from example
if [ -f "env.example" ]; then
    cp env.example .env
    echo "✅ Created .env file from env.example"
    echo ""
    echo "📝 Please edit the .env file with your actual values:"
    echo "   - Replace 'your-super-secret-jwt-key-change-this-in-production' with a strong JWT secret"
    echo "   - Update API keys if needed"
    echo "   - Change default passwords if desired"
    echo ""
    echo "🔐 The .env file is already in .gitignore and will not be committed to version control."
else
    echo "❌ env.example file not found. Creating basic .env file..."
    cat > .env << EOF
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
EOF
    echo "✅ Created basic .env file"
fi

echo ""
echo "🎉 Environment setup complete!"
echo "📖 Next steps:"
echo "   1. Edit .env file with your actual values"
echo "   2. Run 'npm run dev' to start the application"
echo "   3. Run 'npm run seed' to seed the database"
