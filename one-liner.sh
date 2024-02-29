#!/bin/bash

# Check if git is installed, if not, install it using pacman.
if ! command -v git &> /dev/null; then
    sudo pacman -Sy --noconfirm git
fi

# Clone the dotfiles repository.
git clone https://github.com/Creaous/dotfiles.git
cd dotfiles

# Add execute permissions to files.
chmod +x depend.sh
chmod +x install.sh

# Run the scripts.
./depend.sh
./install.sh
