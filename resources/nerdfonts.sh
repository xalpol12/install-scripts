#!/usr/bin/env bash

sudo apt install unzip -y

mkdir -p $HOME/.local/share/fonts

cd /tmp
fonts=(
    "CascadiaCode"
    "FiraCode"
    "Hack"
    "Inconsolata"
    "JetBrainsMono"
    "Mononoki"
    "RobotoMono"
    "SourceCodePro"
    "UbuntuMono"
)

ver="v3.1.1"

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/$ver/$font.zip
    unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache