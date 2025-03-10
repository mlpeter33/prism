#!/bin/bash

# Prism - Minimalist Ubuntu Installer
# Install only what you need.

set -e  # Error handling

# Variables
UBUNTU_VERSION="focal"  # Default Ubuntu version 
TARGET_DIR="/mnt/prism"  # Installation directory
DE_ENV="none"  # Default Desktop Environment
REMOVE_SNAPS=false  # Default Snap removal option

# Ensuring script runs at root
if [[ $(id -u) -ne 0 ]]; then
    echo "⚠️  This script must be run as root."
    exit 1
fi

# Install required tools
apt update && apt install -y debootstrap whiptail

# Ask the user installation configs
DE_ENV=$(whiptail --title "Prism Installer" --menu "Choose a Desktop Environment" 15 50 4 \
    "none" "No Desktop (Minimal Server)" \
    "gnome" "GNOME Desktop" \
    "kde" "KDE Plasma" \
    "xfce" "XFCE Desktop" 3>&1 1>&2 2>&3)

REMOVE_SNAPS=$(whiptail --title "Prism Installer" --yesno "Do you want to remove Snaps?" 10 50; echo $?)

# Start the install
echo "💎Installing Minimal Ubuntu System..."
debootstrap --arch=amd64 $UBUNTU_VERSION $TARGET_DIR http://archive.ubuntu.com/ubuntu/

# Basic System Setup
echo "🛠 Configuring system..."
echo "proc $TARGET_DIR/proc proc defaults 0 0" >> /etc/fstab
echo "sysfs $TARGET_DIR/sys sysfs defaults 0 0" >> /etc/fstab

echo "🎨 Applying selected Desktop Environment..."
if [[ $DE_ENV != "none" ]]; then
    chroot $TARGET_DIR apt install -y ubuntu-desktop
fi

# Snap Removal (if chosen)
if [[ $REMOVE_SNAPS -eq 0 ]]; then
    echo "🧹 Removing Snaps..."
    chroot $TARGET_DIR apt purge -y snapd
fi

# Cleanup & Finish
echo "✅ Prism installation complete!"
echo "Reboot into your new minimal Ubuntu system."
exit 0
