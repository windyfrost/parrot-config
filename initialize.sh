#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# Install apt if not already installed
if ! command -v apt &> /dev/null; then
    echo "Installing apt..."
    apt-get update
    apt-get install -y apt
else
    echo "apt is already installed."
fi

# Install zsh, figlet, and toilet
echo "Installing zsh, figlet, and toilet..."
apt-get install -y zsh figlet toilet

# Additional configurations or commands can be added here

echo "Installation complete."
