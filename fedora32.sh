#!/bin/bash
# first READ! then use. It might wreak havoc.
# tested on 

#add minimize and maximize, and set to the right
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# first update!
sudo dnf update


# containers
#sudo dnf install podman buildah skoppeo


# gnome utils
#sudo dnf install gnome-shell-extensions pavucontrol gnome-tweak-tool 

# media
# obs studio 
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install obs-studio


sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install vlc
    



# coding
# vscodium
sudo rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg 
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium



# Vms
sudo dnf install vagrant  virtualbox -y

