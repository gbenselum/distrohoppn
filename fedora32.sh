#!/bin/bash
# first READ! then use. It might wreak havoc.

#add minimize and maximize, and set to the right
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# location bar in nautilus (gnome files)
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# first update!
sudo dnf update -y
# performance
sudo dnf install tuned cockpit cockpit-podman cockpit-pcp -y

# eyecandy
sudo yum install screenfetch redhat-display-fonts redhat-text-fonts
# zsh ohmyzh
sudo dnf install zsh powerline-fonts -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# gnome utils
sudo dnf install pavucontrol gnome-tweak-tool -y

# media
# obs studio 
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install obs-studio audacity gimp -y

# vlc
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install vlc
    

# it tools

# coding
# vscodium
# sudo rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg 
# printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
# sudo dnf install codium -y


# containers
sudo dnf install buildah skopeo -y

#
sudo dnf install nmap ansible vagrant -y
