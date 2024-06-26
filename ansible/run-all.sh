#!/bin/bash
echo "Running all playbooks"
ansible-playbook -i inventory -e @config.yml create-user.ansible.yml install-yay.ansible.yml setup-nvidia.ansible.yml install-sddm.ansible.yml install-grub-theme.ansible.yml install-packages.ansible.yml setup-powerlevel10k-zsh.ansible.yml -K
echo "All playbooks completed"
