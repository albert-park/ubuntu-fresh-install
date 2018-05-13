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
sudo add-apt-repository -y ppa:synapse-core/testing &&
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make &&
sudo add-apt-repository -y ppa:flexiondotorg/albert &&
sudo add-apt-repository -y ppa:noobslab/themes &&
sudo apt-add-repository -y ppa:teejee2008/ppa &&

# Install programs
sudo apt update &&
sudo apt install -y snapd linux-lowlatency gnome-system-monitor gnome-disk-utility nautilus-dropbox virtualbox chromium-browser keepassx htop powertop ubuntu-restricted-extras pepperflashplugin-nonfree tlp ubuntu-make albert dconf-editor nodejs-legacy screenfetch psensor nmon ukuu playonlinux apt-transport-https darktable &&

# Meteor
curl https://install.meteor.com/ | sh &&

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&

# Skype for Linux Alpha
wget https://go.skype.com/skypeforlinux-64-alpha.deb &&

# GitKraken 
wget https://www.gitkraken.com/download/linux-deb &&

# Install everything
sudo apt update &&
sudo apt install sublime-text &&
sudo dpkg -i linux skypeforlinux-64-alpha.deb $gitkraken &&

# Start software
sudo tlp start && 

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash &&

# Remove debs
sudo rm $gitkraken &&

sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Snap Installs
sudo snap install spotify ghost-desktop brave vscode slack &&

# Store github creds
git config credential.helper store &&

# Swappiness
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf" &&

# Reboot
sudo reboot

