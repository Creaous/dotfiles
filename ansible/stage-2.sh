#!/bin/bash
echo "Running stage 2 of the script..."
ansible-playbook -i inventory -e @config.yml install-yay.ansible.yml setup-nvidia.ansible.yml install-sddm.ansible.yml install-grub-theme.ansible.yml install-packages.ansible.yml setup-powerlevel10k-zsh.ansible.yml -K
echo "Stage 2 is now complete!"
