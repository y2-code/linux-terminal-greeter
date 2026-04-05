#!/bin/bash

echo "[*] Removing Terminal Greeter..."

rm -f "$HOME/.local/bin/startup.sh"
rm -f "$HOME/.local/bin/greet.py"
rm -f "$HOME/.config/autostart/terminal-greeter.desktop"
rm -f "$HOME/.config/terminal-greeter.conf"

echo "[✓] Uninstalled successfully."