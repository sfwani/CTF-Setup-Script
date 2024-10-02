#!/bin/bash

# CTF Challenge Setup Script
# This script installs necessary tools and dependencies for CTF challenges.

# Function to check and install a package
install_package() {
    if ! dpkg -l | grep -q "$1"; then
        echo "Installing $1..."
        sudo apt install "$1" -y
    else
        echo "$1 is already installed."
    fi
}

# Update and upgrade the package manager
echo "Updating and upgrading package manager..."
sudo apt update && sudo apt upgrade -y

# Install common CTF tools with checks
echo "Installing common CTF tools..."

# List of tools to install
tools=(
    git
    nmap
    netcat
    python3
    python3-pip
    aircrack-ng
    sqlmap
    hydra
    john
)

# Loop through the list and install each tool
for tool in "${tools[@]}"; do
    install_package "$tool"
done

# Install useful Python libraries
python_libraries=(
    requests
    beautifulsoup4
    pwntools
)

# Install Python libraries with pip
echo "Installing Python libraries..."
for lib in "${python_libraries[@]}"; do
    pip3 show "$lib" &> /dev/null
    if [ $? -ne 0 ]; then
        pip3 install "$lib"
        echo "$lib installed successfully."
    else
        echo "$lib is already installed."
    fi
done

# Check for any missing dependencies for installed tools
echo "Checking for missing dependencies..."
sudo apt install -f

# Clean up
echo "Cleaning up unnecessary packages..."
sudo apt autoremove -y

# Additional features
echo "Setting up CTF directories..."
mkdir -p ~/CTF/Challenges ~/CTF/Writeups ~/CTF/Tools

# Download SecLists into the Tools directory
echo "Downloading SecLists repository..."
git clone https://github.com/danielmiessler/SecLists.git ~/CTF/Tools/SecLists

# Completion message
echo "CTF environment setup complete! You can now focus on solving challenges."

# Open a terminal to start using the tools
gnome-terminal
