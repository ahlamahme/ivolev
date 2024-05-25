#!/bin/bash

# Define variables
USERNAME="ahlamuser"
GROUP="ahlamgroup"

# Create new group
sudo groupadd $GROUP

# Create new user and add to new group
sudo adduser $USERNAME
sudo usermod -aG $GROUP $USERNAME

# Configure sudo permissions
echo "%$GROUP ALL=(ALL) NOPASSWD: /usr/bin/apt-get install apache2" | sudo tee /etc/sudoers.d/$GROUP

# Inform user of success
echo "User $USERNAME has been created, added to group $GROUP, and configured to install Apache web server with sudo."

