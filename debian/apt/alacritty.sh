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

sudo cp target/release/alacritty /usr/local/bin

# copy code completion
sudo cp 

# copy code completion to 'extra' dir and remove source code
mkdir -p ~/extra
cd .. && sudo cp extra/completions ~/extra/completions/ && sudo rm -r alacritty

# add alacritty to x-term alternatives
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 50

