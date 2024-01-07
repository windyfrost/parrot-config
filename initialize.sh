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

# Install zsh, figlet, toilet, Python 3, pip, seclists, dnsrecon, enum4linux, feroxbuster, impacket-scripts, redis-tools, snmpwalk, tnscmd10g, wkhtmltopdf
echo "Installing zsh, figlet, toilet, Python 3, pip, seclists, dnsrecon, enum4linux, feroxbuster, impacket-scripts, redis-tools, snmpwalk, tnscmd10g, wkhtmltopdf..."
apt-get install -y zsh figlet toilet python3 python3-pip seclists dnsrecon enum4linux feroxbuster impacket-scripts redis-tools snmp walk tnscmd10g wkhtmltopdf

# Additional configurations or commands can be added here

echo "Installation complete."
