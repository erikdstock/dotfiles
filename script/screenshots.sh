#!/usr/bin/env bash

# Reset the screenshots directory
TARGET_DIR="$HOME/Documents/Screenshots"

# Create the directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
    echo "Created directory: $TARGET_DIR"
else
    echo "Directory already exists: $TARGET_DIR"
fi

# Set the screenshot location to the target directory
defaults write com.apple.screencapture location "$TARGET_DIR"

# Apply the changes immediately
killall SystemUIServer

echo "Screenshot location set to: $TARGET_DIR"