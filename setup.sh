#!/bin/bash

# Set GitHub raw file URL (Replace with your actual GitHub raw URL)
GITHUB_RAW_URL="https://raw.githubusercontent.com/Jayesh370/CodeClash2025-Setup/main/contest.html"

# Download contest.html from GitHub
echo "Downloading contest.html..."
wget -O ~/contest.html $GITHUB_RAW_URL

# Install Firefox if not installed
if ! command -v firefox &> /dev/null
then
    echo "Firefox not found. Installing..."
    sudo apt update && sudo apt install -y firefox
fi

# Run contest in full-screen kiosk mode
echo "Starting competition..."
firefox --kiosk ~/contest.html
