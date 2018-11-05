#!/usr/bin/bash
echo "backing up package list"
pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h > ~/packageList 
echo "=========================="
echo "removing orphaned packages"
echo "=========================="
sudo pacman -Rns $(pacman -Qtdq)
echo "upgrading system"
echo "=========================="
sudo pacman -Syu
echo "rebuilding menu"
echo "=========================="
mmaker -vf OpenBox3
openbox --reconfigure
echo "checking systemctl for failed units"
echo "=========================="
systemctl --failed
echo "look for errors in logfiles"
echo "=========================="
journalctl -p 3 -xb
