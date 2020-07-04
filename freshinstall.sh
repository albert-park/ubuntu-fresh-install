#!/bin/bash

# Initialize
sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Add repos
sudo apt install -y software-properties-common &&
sudo add-apt-repository -y ppa:linrunner/tlp &&
# sudo add-apt-repository -y ppa:noobslab/themes &&
sudo apt-add-repository -y ppa:teejee2008/ppa &&

# Install programs
sudo apt update &&
sudo apt install -y snapd linux-lowlatency chromium-browser keepassxc powertop tlp nodejs neofetch ukuu nvtop npm python3 python3-pip python-is-python3&&

# Start software
sudo tlp start && 

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash &&

# Remove debs
# sudo rm $gitkraken &&

sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Store github creds
git config credential.helper store &&

# Swappiness
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf" &&

# Reboot
sudo reboot

