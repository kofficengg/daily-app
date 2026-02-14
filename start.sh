#!/bin/bash

# Daily App Startup Script
# This script helps you quickly set up and run the Daily App

set -e

echo "========================================="
echo "   Daily App - Startup Script"
echo "========================================="
echo ""

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for Node.js and npm
if ! command_exists node; then
    echo "Error: Node.js is not installed. Please install Node.js first."
    exit 1
fi

if ! command_exists npm; then
    echo "Error: npm is not installed. Please install npm first."
    exit 1
fi

echo "✓ Node.js version: $(node --version)"
echo "✓ npm version: $(npm --version)"
echo ""

# Check if client dependencies are installed
if [ ! -d "client/node_modules" ]; then
    echo "Installing client dependencies..."
    cd client
    npm install
    cd ..
    echo "✓ Client dependencies installed"
    echo ""
else
    echo "✓ Client dependencies already installed"
    echo ""
fi

# Check if server dependencies are installed
if [ ! -d "server/node_modules" ]; then
    echo "Installing server dependencies..."
    cd server
    npm install
    cd ..
    echo "✓ Server dependencies installed"
    echo ""
else
    echo "✓ Server dependencies already installed"
    echo ""
fi

# Check if client build exists
if [ ! -d "client/build" ]; then
    echo "Building client application..."
    cd client
    npm run build
    cd ..
    echo "✓ Client built successfully"
    echo ""
else
    echo "✓ Client build found"
    echo ""
fi

# Start the server
echo "========================================="
echo "   Starting the server..."
echo "========================================="
echo ""
echo "The app will be available at: http://localhost:10000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

cd server
npm start
