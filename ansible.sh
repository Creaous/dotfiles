#!/bin/bash

echo "Ensuring dependencies are installed"

# Check if everything required is installed.
pacman -Qs git &> /dev/null || sudo pacman -Sy --noconfirm git
pacman -Qs ansible &> /dev/null || sudo pacman -Sy --noconfirm ansible
pacman -Qs python-passlib &> /dev/null || sudo pacman -Sy --noconfirm python-passlib
pacman -Qs unzip &> /dev/null || sudo pacman -Sy --noconfirm unzip

# Clone the dotfiles repository.
git clone https://github.com/Creaous/dotfiles.git --depth 1
cd dotfiles

chmod +x ansible/run-all.sh

cd ansible

echo "Change username and password in config.yml: nano config.yml"
echo "For these reasons, we are not automatically running it for you."
echo "Once ready to install everything, run: ./run-all.sh"
