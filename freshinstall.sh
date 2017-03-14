#!/bin/bash

# Software Versions
sublime=sublime-text_build-3126_amd64.deb
slack=slack-desktop-2.3.4-amd64.deb
vscode=index.html??LinkID=760868

# Initialize
sudo apt update &&
sudo apt -y upgrade &&
sudo apt -y dist-upgrade &&
sudo apt-get -y autoremove &&

# Add repos
sudo add-apt-repository -y ppa:linrunner/tlp &&
sudo add-apt-repository -y ppa:synapse-core/testing &&
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make &&
sudo add-apt-repository -y ppa:flexiondotorg/albert &&
sudo add-apt-repository -y ppa:noobslab/themes &&
sudo apt-add-repository -y ppa:teejee2008/ppa &&

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&

# Install programs
sudo apt update &&
sudo apt install -y nautilus-dropbox spotify-client virtualbox chromium-browser keepassx htop powertop ubuntu-restricted-extras pepperflashplugin-nonfree tlp ubuntu-make albert dconf-editor nodejs-legacy screenfetch psensor nmon ukuu audacity &&

# Meteor
# curl https://install.meteor.com/ | sh &&

# LMMS w/ VST support
sudo apt install -y apt-transport-https software-properties-common wget libglibmm-2.4-1v5 &&
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.4.1~kxstudio1_all.deb &&
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.4.1~kxstudio1_all.deb &&
sudo dpkg -i kxstudio-repos_9.4.1~kxstudio1_all.deb kxstudio-repos-gcc5_9.4.1~kxstudio1_all.deb &&
sudo apt update &&
sudo apt install -y wine lmms-vst-full &&

# Sublime Text
wget https://download.sublimetext.com/$sublime &&

# Slack
wget https://downloads.slack-edge.com/linux_releases/$slack &&

# Visual Studio Code
wget https://go.microsoft.com/fwlink/?LinkID=760868 &&

# Skype for Linux Alpha
wget https://go.skype.com/skypeforlinux-64-alpha.deb &&

# Ghost desktop
wget http://desktop-updates.ghost.org/download/linux &&

# Install everything
sudo dpkg -i linux skypeforlinux-64-alpha.deb $vscode $slack $sublime &&

# Start software
sudo tlp start && 

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash &&

# Remove debs
sudo rm $sublime $slack $vscode &&

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

