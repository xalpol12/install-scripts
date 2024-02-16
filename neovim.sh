#!/usr/bin/env bash

# prerequisites
sudo apt install ninja-build gettext cmake unzip curl

git clone https://github.com/neovim/neovim
cd ./neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# install my dotfiles into .config/nvim
git clone https://github.com/xalpol12/nvim 
sudo sh -c 'mkdir -p $HOME/.config/nvim/ && mv ./nvim/* $HOME/.config/nvim && rm -r ./nvim/'

# remove neovim source files
sudo rm -r ./neovim