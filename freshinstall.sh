#!/bin/bash

# Initialize
sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Apt
sudo apt install -y build-essential software-properties-common linux-lowlatency powertop tlp nodejs neofetch nvtop npm python3 python3-pip python-is-python3 docker.io input-remapper tilix gnome-system-monitor &&

# Flatpak
flatpak update -y &&
flatpak install -y brave firefox typora chromium &&

# Start software
sudo tlp start && 

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash &&
nvm install stable &&

# Docker
sudo usermod -aG docker $USER -y &&

sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Store github creds
git config credential.helper store &&

# Swappiness
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf" &&

# Neofetch
echo 'neofetch' >> ~/.bashrc &&

# Reboot
sudo reboot

