#!/usr/bin/env bash

# fix for unstable networking - so i don't have to restart
# network adapter on each boot
#
# the problem was network-manager, it didn't work at all and it 
# clashed with already working wpa_supplicant that debian provides
# out of the box

# uninstall all network-manager packages
sudo apt purge network-manager

# install wpa_supplicant frontend
sudo apt install wpagui -y

echo "network-manager purged, wpa_supplicant set up, you can reboot now"
