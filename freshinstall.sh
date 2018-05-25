#!/bin/bash

# Software Versions
gitkraken=gitkraken-amd64.deb

# Initialize
sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Add repos
sudo apt install -y software-properties-common &&
sudo add-apt-repository -y ppa:linrunner/tlp &&
sudo add-apt-repository -y ppa:flexiondotorg/albert &&
# sudo add-apt-repository -y ppa:noobslab/themes &&
sudo apt-add-repository -y ppa:teejee2008/ppa &&

# Install programs
sudo apt update &&
sudo apt install -y snapd linux-lowlatency gnome-system-monitor gnome-disk-utility nautilus-dropbox virtualbox chromium-browser keepassxc htop powertop ubuntu-restricted-extras pepperflashplugin-nonfree tlp albert dconf-editor nodejs-legacy screenfetch psensor nmon ukuu playonlinux apt-transport-https darktable &&

# Skype for Linux Alpha
wget https://go.skype.com/skypeforlinux-64-alpha.deb &&

# GitKraken 
wget https://www.gitkraken.com/download/linux-deb &&

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

# Snap Installs
sudo snap install spotify ghost-desktop &&
sudo snap install vscode --classic &&
sudo snap install slack --classic &&

# Store github creds
git config credential.helper store &&

# Swappiness
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf" &&

# Reboot
sudo reboot

