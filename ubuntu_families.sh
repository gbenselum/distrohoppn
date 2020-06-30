#!/bin/bash
# created for ubuntu families 20.04 it might work with others with APT package manager
# first READ! then use. It might wreak havoc.
# tested on ubuntu 20.04 and POP os

# cleanup, no snap, remove default docker 
sudo apt purge snapd -y
sudo apt-get remove docker docker-engine docker.io containerd runc -y

# install docker community
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get install apt-transport-https  ca-certificates curl gnupg-agent software-properties-common -y
sudo apt-get install docker-ce docker-ce-cli containerd.io    
sudo add-apt-repository   "deb [arch=amd64] https://download.docker.com/linux/ubuntu    $(lsb_release -cs)    stable"
sudo apt install docker-ce docker-ce-cli containerd.io -y


# sublime text repo
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list


# add multiverse & universe repos
sudo add-apt-repository multiverse
sudo add-apt-repository universe

#Microsfot repo
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"


# gnome utils
sudo apt install gnome-shell-extensions pavucontrol arc-theme gnome-tweak-tool plank gnome-clocks -y

# gaming and extras
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt install steam  lutris vlc -y

# Vms
sudo apt install vagrant gnome-boxes virtualbox -y

# DEV ansible, Python and more
sudo apt install python3-pip git code tmux atom  sublime-text -y 
sudo pip3 install ansible-lint

# collab
sudo apt install slack teams -y 

