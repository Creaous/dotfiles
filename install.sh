#!/bin/bash

echo "This script will backup the existing ~/.config directory and copy the .config directory into ~/.config."
echo "This script will backup the existing ~/.local/share directory and copy the .local/share directory into ~/.local/share."
echo "It is recommended to run this script on a brand new system, as the backup may be huge."

read -p "Do you want to continue? (y/n): " choice
if [[ $choice == "n" ]]; then
    exit 0
fi

# Backup the existing ~/.config directory
if [ -d ~/.config ]; then
    echo "Backing up the existing ~/.config directory..."
    cp -r ~/.config ~/.config_backup_$(date +%Y%m%d%H%M%S)
fi


# Backup the existing ~/.local/share directory
if [ -d ~/.config ]; then
    echo "Backing up the existing ~/.local/share directory..."
    cp -r ~/.local/share ~/.local_share_backup_$(date +%Y%m%d%H%M%S)
fi

# Copy the .config directory into ~/.config
echo "Copying the .config directory into ~/.config..."
cp -rf .config/* ~/.config

# Copy the .local/share directory into ~/.local/share
echo "Copying the .local/share directory into ~/.local/share..."
cp -rf .local/share/* ~/.local/share

echo "Installation complete."
echo "A restart may be required to apply the changes."
