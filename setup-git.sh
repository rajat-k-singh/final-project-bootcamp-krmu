#!/bin/bash

# Travel Agency App - Git Setup Script

echo "🚀 Setting up Git repository for Travel Agency App..."

# Initialize Git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: AI-powered travel app with DeepSeek, Wikivoyage, and flight APIs

- Integrated DeepSeek R1 API for destination insights
- Added Wikivoyage MediaWiki API for travel guides
- Implemented free flights API with mock data fallback
- Created comprehensive TravelCard component
- Added responsive Tailwind CSS styling
- Removed default travel packages
- Updated navigation and routing
- Added comprehensive documentation"

echo "✅ Git repository initialized successfully!"
echo ""
echo "📝 Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Add the remote origin:"
echo "   git remote add origin <your-github-repo-url>"
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo ""
echo "🎉 Your Travel Agency App is ready for GitHub!"
