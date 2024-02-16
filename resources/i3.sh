#!/usr/bin/env bash

# xorg display server install
sudo apt install -y xorg xserver-xorg xbacklight xinput

# i3 window manager install
sudo apt install -y i3-wm suckless-tools polybar

# window switcher, search
sudo apt install -y rofi

# notifications
sudo apt install -y dunst

# console display manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings

sudo systemctl enable lightdm