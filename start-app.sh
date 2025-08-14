#!/bin/bash

# Travel Agency App - Start Script

echo "🚀 Starting Travel Agency App..."

# Kill any existing processes
echo "🔄 Cleaning up existing processes..."
pkill -f "node.*server" 2>/dev/null
pkill -f "react-scripts" 2>/dev/null

# Wait a moment for processes to stop
sleep 2

# Start server in background
echo "🔧 Starting server on port 5001..."
cd server && npm run dev > ../server.log 2>&1 &
SERVER_PID=$!

# Wait for server to start
sleep 3

# Start client in background
echo "🎨 Starting client on port 3000..."
cd ../client && npm start > ../client.log 2>&1 &
CLIENT_PID=$!

# Wait for client to start
sleep 5

echo "✅ Travel Agency App is starting up!"
echo ""
echo "📱 Client: http://localhost:3000"
echo "🔧 Server: http://localhost:5001"
echo ""
echo "📋 Logs:"
echo "   Server: tail -f server.log"
echo "   Client: tail -f client.log"
echo ""
echo "🛑 To stop: pkill -f 'node.*server' && pkill -f 'react-scripts'"
echo ""
echo "🎉 Your AI-powered travel app is ready!"
