#

sudo apt install nmap cockpit cockpit-docker -y
sudo apt install ansible -y

# pi hole  
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh

