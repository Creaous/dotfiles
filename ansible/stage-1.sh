#!/bin/bash
echo "Running stage 1 of the script..."
ansible-playbook -i inventory -e @config.yml create-user.ansible.yml -K
echo "Stage 1 is now complete!"
