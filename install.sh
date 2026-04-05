#!/bin/bash

echo "[*] Installing Terminal Greeter..."

INSTALL_DIR="$HOME/.local/bin"
AUTOSTART_DIR="$HOME/.config/autostart"
CONFIG_FILE="$HOME/.config/terminal-greeter.conf"

# Create directories
mkdir -p "$INSTALL_DIR"
mkdir -p "$AUTOSTART_DIR"
mkdir -p "$HOME/.config"

# Copy scripts
cp greet.py "$INSTALL_DIR/"
cp startup.sh "$INSTALL_DIR/"

# Make executable
chmod +x "$INSTALL_DIR/startup.sh"
chmod +x "$INSTALL_DIR/greet.py"

# Create config if not exists
if [ ! -f "$CONFIG_FILE" ]; then
cat > "$CONFIG_FILE" <<EOF
WELCOME_TEXT="Welcome, Sir."
EOF
fi

# Create autostart entry
cat > "$AUTOSTART_DIR/terminal-greeter.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Terminal Greeter
Comment=Launch greeting terminal on startup
Exec=xfce4-terminal --geometry=100x40 --command="$INSTALL_DIR/startup.sh"
X-GNOME-Autostart-enabled=true
Terminal=false
EOF

echo "[✓] Installation complete!"
echo "Log out and log back in to see the greeter."