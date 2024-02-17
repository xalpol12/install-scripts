#!/usr/bin/env bash

# configuration with nvidia optimus bs
# for my laptop's case: intel i5 integra and geforce 250MX
# based on this doc: https://wiki.debian.org/NVIDIA%20Optimus
# "Using NVIDIA PRIME Render Offload" section

# Check if outdated package is installed
if dpkg-query -W -f='${Status}' xserver-xorg-video-intel 2>/dev/null | grep -q "installed"; then
    echo "Package xserver-xorg-video-intel is installed."
    echo "Removing the package..."
    sudo apt remove --purge xserver-xorg-video-intel
    echo "Package xserver-xorg-video-intel has been removed."
else
    echo "Package xserver-xorg-video-intel is not installed."
fi

# installing kernel headers
sudo apt install linux-headers-amd64 -y

# install drivers
sudo apt install nvidia-driver firmware-misc-nonfree

# Add gpu alias to .bash_aliases if it doesn't exist
if ! grep -q "alias gpu='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia '" ~/.bash_aliases; then
    echo "alias gpu='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia '" >> ~/.bash_aliases
    echo "Alias 'gpu' has been added to .bash_aliases"
else
    echo "Alias 'gpu' already exists in .bash_aliases"
fi