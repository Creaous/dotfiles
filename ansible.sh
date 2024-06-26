#!/bin/bash

# Check if git is installed, if not, install it using pacman.
if ! command -v git &> /dev/null; then
    sudo pacman -Sy --noconfirm git
fi

# Check if ansible is installed, if not, install it using pacman.
if ! command -v git &> /dev/null; then
    sudo pacman -Sy --noconfirm ansible
fi

# Clone the dotfiles repository.
git clone https://github.com/Creaous/dotfiles.git
cd dotfiles

chmod +x ansible/run-all.sh

echo "Change username and password in config.yml: nano ansible/config.yml"
echo "For these reasons, we are not automatically running it for you."
echo "Once ready to install everything, run ./ansible/run-all.sh"