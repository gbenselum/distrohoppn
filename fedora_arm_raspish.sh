#!/bin/bash
# first READ! then use. It might wreak havoc.
# tested on 

# first update!
sudo dnf update -y
# performance
sudo dnf install tuned cockpit-pcp  -y

# eyecandy
sudo dnf install screenfetch

# zsh ohmyzh
sudo dnf install zsh powerline-fonts -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

# containers
sudo dnf install buildah skopeo -y



#
sudo dnf install nmap ansible  -y
