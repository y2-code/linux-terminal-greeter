#!/bin/bash

# -------- Terminal Greeter --------

clear

CONFIG="$HOME/.config/terminal-greeter.conf"

# Load config if exists
if [ -f "$CONFIG" ]; then
    source "$CONFIG"
else
    WELCOME_TEXT="Welcome, Sir."
fi

# System info
command -v neofetch >/dev/null && neofetch
echo

# Welcome banner
if command -v figlet >/dev/null && command -v lolcat >/dev/null; then
    figlet "$WELCOME_TEXT" | lolcat
else
    echo "$WELCOME_TEXT"
fi

echo

# Run greeting script
python3 "$HOME/.local/bin/greet.py"

echo