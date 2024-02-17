#!/usr/bin/env bash

# prerequisites
sudo apt install ninja-build gettext cmake unzip curl

git clone https://github.com/neovim/neovim
cd ./neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# remove neovim source files
sudo rm -r neovim

# add required to PATH
if command -v python3 &>/dev/null; then
else
    sudo apt install python3 -y
fi
echo 'export PATH="/usr/bin/python3:$PATH"' >> ~/.profile

if command -v node &>/dev/null; then
else
    sudo apt install nodejs npm -y
fi
echo 'export PATH="/usr/bin/node/:$PATH"' >> ~/.profile

# install my dotfiles into .config/nvim
git clone https://github.com/xalpol12/nvim 
sudo mkdir -p $HOME/.config/nvim/ && sudo mv ./nvim/* $HOME/.config/nvim && sudo rm -r ./nvim/