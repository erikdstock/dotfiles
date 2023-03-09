#!/usr/bin/env bash
# PATH modifiers

# Current install location of brew 'java' - this might need to be refined
# But seems to be required for elasticsearch@6 at work
# After installing java and symlinking as required by caveats, find the path with 
# https://medium.com/@devkosal/switching-java-jdk-versions-on-macos-80bc868e686a
export JAVA_HOME="/opt/homebrew/Cellar/openjdk/19.0.2/libexec/openjdk.jdk/Contents/Home"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
