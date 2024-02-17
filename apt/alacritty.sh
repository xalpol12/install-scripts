#!/usr/bin/env bash

# required
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y

# rust install
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# source code
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# build
cargo build --release

# confirm successfull install
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
infocmp alacritty

# remove source code
sudo rm -r alacritty