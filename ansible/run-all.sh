#!/bin/bash

# Ensure scripts are executable
chmod +x stage-1.sh
chmod +x stage-2.sh

# Get the user from config.yml
user=$(yq .user config.yml | sed 's/"//g')

# Check if yq is available
if ! command -v yq &> /dev/null; then
    sudo pacman -Sy --noconfirm yq
fi

# Check if user value is found
if [ -z "$user" ]; then
  echo "Error: 'user' key not found in config.yml"
  exit 1
fi

# Execute stage 1
echo "Executing stage 1 of the scripts"
./stage-1.sh

# Execute stage 2 as the retrieved user
echo "Executing stage 2 of the scripts as user: $user"
cp -R ../ /home/$user/dotfiles
chmod -R 777 /home/$user/dotfiles
chown -R $user:$user /home/$user/dotfiles
cd /home/$user/dotfiles/ansible
sudo -H -u $user bash -c './stage-2.sh'

# (Hopefully) it completed successfully.
echo "(Hopefully) it completed successfully."
