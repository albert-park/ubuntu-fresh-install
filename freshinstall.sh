#!/bin/bash

# Initialize
sudo apt update &&
sudo apt -y upgrade && 
sudo apt -y dist-upgrade && 
sudo apt-get -y autoremove &&

# Add repos
sudo add-apt-repository -y ppa:linrunner/tlp &&
sudo add-apt-repository -y ppa:synapse-core/testing &&
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make &&
sudo add-apt-repository -y ppa:nilarimogard/webupd8 &&
sudo add-apt-repository -y ppa:noobslab/themes &&

# Install programs
sudo apt update &&
sudo apt install -y nautilus-dropbox virtualbox chromium-browser keepassx unity-tweak-tool htop powertop ubuntu-restricted-extras pepperflashplugin-nonfree tlp ubuntu-make synapse albert dconf-editor nodejs-legacy &&


# Meteor
curl https://install.meteor.com/ | sh &&

# Sublime Text
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb &&
sudo dpkg -i sublime-text_build-3114_amd64.deb &&

# Slack 
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.0.6-amd64.deb &&
sudo dpkg -i slack-desktop-2.0.6-amd64.deb && 

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt update &&
# sudo apt -y install spotify-client-0.9.17 &&
sudo apt -y install spotify-client &&

# Start software
sudo tlp start &&

# Ubuntu Make software
umake ide visual-studio-code &&

# NVM
https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash &&

# Remove debs
sudo rm sublime-text_build-3114_amd64.deb &&
sudo rm slack-desktop-2.0.6-amd64.deb &&

sudo apt update && 
sudo apt -y upgrade && 
sudo apt -y dist-upgrade && 
sudo apt-get -y autoremove &&

# Store github creds
git config credential.helper store

