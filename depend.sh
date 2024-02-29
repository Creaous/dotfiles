#!/bin/bash

echo "This script will install the necessary dependencies for my dotfiles."

read -p "Do you want to continue? (y/n): " choice
if [[ $choice == "n" ]]; then
    exit 0
fi

# Clone yay repository
git clone https://aur.archlinux.org/yay.git
cd yay

# Install yay
yes | makepkg -si

# Upgrade system
yay -Syyu

# Install dependencies using yay
yay -S --noconfirm git bash hyprland hyprpaper floorp-bin poweralertd waybar xfce-polkit swayidle wl-clipboard nvidia-settings hyprpicker cliphist konsole grim slurp xwaylandvideobridge-git backlight_control swaylock-effects qt6ct ddcutil
