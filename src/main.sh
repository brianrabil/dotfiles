#!/bin/bash

echo "Hello world!"

# Setup Geist Font for the terminal
FONT_NAME="GeistMono"
FONT_VERSION="1.3.0"
FONT_URL="https://github.com/vercel/geist-font/releases/download/${FONT_VERSION}/GeistMono-${FONT_VERSION}.zip"
FONT_ZIP="GeistMono-${FONT_VERSION}.zip"
FONT_DIR="$HOME/.local/share/fonts"
FONT_FILE="$FONT_DIR/GeistMono-Regular.ttf"

# Function to check if the font is already installed
is_font_installed() {
    if [ -f "$FONT_FILE" ]; then
        echo "Font $FONT_NAME is already installed."
        return 0
    else
        return 1
    fi
}

# Check if the font is already installed
if is_font_installed; then
    exit 0
fi
