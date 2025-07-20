#!/bin/bash

set -e

INSTALL_DIR="/usr/local/bin"
DESKTOP_DIR="$HOME/.local/share/applications"

SCRIPT1="display_daemon"
SCRIPT2="screen_mode_selector"
DESKTOP_FILE="SwaySMS.desktop"


echo "===Welcome to SwaySMS==="
echo "Installing scripts..."

sudo install -m 755 "$SCRIPT1" "$INSTALL_DIR/$SCRIPT1"
sudo install -m 755 "$SCRIPT2" "$INSTALL_DIR/$SCRIPT2"

echo "Scripts installed."

# Create .desktop entry
echo "Creating .desktop file..."

mkdir -p "$DESKTOP_DIR"

cat > "$DESKTOP_DIR/$DESKTOP_FILE" <<EOF
[Desktop Entry]
Name=SwaySMS
Exec=$INSTALL_DIR/$SCRIPT2
Icon=display
Type=Application
Categories=Utility;
Terminal=false
EOF

echo ".desktop file installed."

echo "===Installation complete.==="
