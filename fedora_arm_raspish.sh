#!/bin/bash
# first READ! then use. It might wreak havoc.
# tested on 

#add minimize and maximize, and set to the right
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# location bar in nautilus (gnome files)
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# first update!
sudo dnf update -y
# performance
sudo dnf install tuned cockpit-pcp 

# eyecandy
sudo dnf install screenfetch

# zsh ohmyzh
sudo dnf install zsh powerline-fonts -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
all pavucontrol gnome-tweak-tool -y



# containers
sudo dnf install buildah skopeo -y



#
sudo dnf install nmap ansible  -y
