#!/usr/bin/env bash

# xorg display server install
sudo apt install -y xorg xserver-xorg xbacklight xinput

# i3 window manager install
sudo apt install -y i3-wm suckless-tools 

# customizable top/bottom bar
sudo apt install -y polybar

# window switcher, search
sudo apt install -y rofi

# hotkeys
sudo apt install -y sxhkd

# media player keys
sudo apt install -y playerctl 

# audio control
sudo apt install -y pavucontrol

# notifications
sudo apt install -y dunst

#wallpaper utils
sudo apt install -y feh

# console display manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings

sudo systemctl enable lightdm
