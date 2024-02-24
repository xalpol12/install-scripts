#!/usr/bin/env bash

sudo apt install nodejs -y

# sudo with args to allow global access to node_modules
sudo npm install -g @angular/cli --unsafe-perm=true --allow-root
