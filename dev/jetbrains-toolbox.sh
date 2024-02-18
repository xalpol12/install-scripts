#!/usr/bin/env bash

toolbox=jetbrains-toolbox-2.2.1.19765.tar.gz
aliases_file=~/.bash_aliases

wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.2.1.19765.tar.gz
tar -xvzf $toolbox
cd $toolbox
mv jetbrains-toolbox /opt/

# check if bash_aliases exists
if ! [ -f "$aliases_file" ]; then
    touch "$aliases_file"
fi

# check if alias is already present
if ! grep -q "alias jtoolbox='/opt/jetbrains-toolbox'" "$aliases_file"; then
    echo "alias jtoolbox='/opt/jetbrains-toolbox'" >> $aliases_file
fi
