Travel Agency App
A modern travel application that provides comprehensive destination information, high-quality images, travel guides, and flight details using multiple APIs.

🚀 Features
✨ Core Features
High-Quality Travel Images: Beautiful photos from Unsplash API for every destination
Travel Guides: Access detailed travel guides from Wikivoyage (MediaWiki API)
Photo Gallery: Browse stunning images with photographer attribution
Flight Information: View real-time flight details and schedules
Responsive Design: Modern UI with mobile-first approach
Real-time Search: Search for any destination and get instant results
50 Top Destinations: Curated list of world's most popular travel spots
🔧 Technical Features
React Frontend: Modern React with hooks and functional components
Node.js Backend: Express.js server with MongoDB database
API Integration: Multiple external APIs for comprehensive data
Authentication: JWT-based user authentication
Responsive Design: Mobile-first design with Tailwind CSS
🛠️ Tech Stack
Frontend
React 19.1.1: Modern React with hooks
React Router: Client-side routing
Tailwind CSS: Utility-first CSS framework
Axios: HTTP client for API calls
Backend
Node.js: JavaScript runtime
Express.js: Web application framework
MongoDB: NoSQL database
Mongoose: MongoDB object modeling
JWT: JSON Web Tokens for authentication
bcryptjs: Password hashing
APIs
Unsplash: High-quality travel images and photos
Wikivoyage: Travel guides and content
Aviation Stack: Flight information (with mock data fallback)
📦 Installation
Prerequisites
Node.js (v16 or higher)
MongoDB (local or Atlas)
npm or yarn
Setup Instructions
Clone the repository

git clone <your-repo-url>
cd travel-agency
Install dependencies

# Install server dependencies
cd server
npm install

# Install client dependencies
cd ../client
npm install
Environment Configuration

Quick Setup (Recommended):

# Run the setup script to create .env file
./setup-env.sh
Manual Setup: Create a .env file in the root directory:

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
⚠️ Security Note: The .env file is automatically added to .gitignore and will never be committed to version control.

Database Setup

cd server
npm run seed
Start the application

# Start the backend server (from server directory)
npm run dev

# Start the frontend (from client directory)
npm start
🚀 Usage
Getting Started
Open your browser and navigate to http://localhost:3000
Use the search bar to find any destination
Explore the comprehensive travel information provided
Features Overview
Travel Search
Search for any destination worldwide
Get AI-powered insights about the place
Access detailed travel guides
View available flights
Flight Search
Search for one-way and round-trip flights
Filter by passenger count and cabin class
View real-time flight information
Flight Tracking
Track specific flights by flight number
View departure and arrival times
Check flight status and gate information
🔑 API Keys Configuration
Unsplash API
The Unsplash API key is already configured in the application:

const UNSPLASH_ACCESS_KEY = 'Kdt4piWRPdhPoOPeV5Jj-Xg8FoFAym06YMTMQyN826g';
Aviation Stack API (Optional)
To use real flight data instead of mock data, get a free API key from Aviation Stack and update the key in client/src/services/freeFlightsAPI.js:

const AVIATION_API_KEY = 'your-aviation-stack-key';
📁 Project Structure
travel-agency/
├── client/                 # React frontend
│   ├── src/
│   │   ├── components/     # Reusable components
│   │   ├── pages/         # Page components
│   │   ├── services/      # API services
│   │   ├── context/       # React context
│   │   └── ...
│   └── ...
├── server/                # Node.js backend
│   ├── controllers/       # Route controllers
│   ├── models/           # Database models
│   ├── routes/           # API routes
│   ├── middleware/       # Custom middleware
│   └── ...
└── ...
🔧 API Services
Unsplash API Service (unsplashAPI.js)
searchPlaceImages(placeName, count): Get multiple images for a destination
getFeaturedImage(placeName): Get a single featured image
getRandomImages(placeName, count): Get random travel images
Wikivoyage API Service (wikivoyageAPI.js)
searchPlace(placeName): Search for travel articles
getTravelGuide(placeName): Get detailed travel guide
getPageContent(pageId): Get specific page content
Free Flights API Service (freeFlightsAPI.js)
getFlights(departureIata, arrivalIata, date): Get flight information
getFlightStatus(flightNumber): Track specific flights
getAirports(city): Get airport information
🎨 UI Components
TravelCard Component
A comprehensive component that displays:

Featured image and destination description
Wikivoyage travel guide content
Photo gallery with Unsplash images
Available flights and schedules
Responsive Design
Mobile-first approach
Tailwind CSS utility classes
Modern gradient designs
Interactive hover effects
🔒 Security
JWT-based authentication
Password hashing with bcryptjs
Environment variable protection
API key security
🚀 Deployment
Frontend Deployment
cd client
npm run build
Backend Deployment
cd server
npm start
🤝 Contributing
Fork the repository
Create a feature branch (git checkout -b feature/amazing-feature)
Commit your changes (git commit -m 'Add some amazing feature')
Push to the branch (git push origin feature/amazing-feature)
Open a Pull Request
📝 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments
Unsplash for high-quality travel images
Wikivoyage for travel guides
Aviation Stack for flight data
React for the frontend framework
📞 Support
For support and questions, please open an issue in the GitHub repository.

Happy Traveling! ✈️🌍
