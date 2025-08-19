#!/usr/bin/env bash


latest_version=1.5.8
echo "Found latest obsidian version: ${latest_version}. Downloading..."

obsidian_url="https://github.com/obsidianmd/obsidian-releases/releases/download/v${latest_version}/obsidian_${latest_version}_amd64.deb"

wget "$obsidian_url" -O /tmp/obsidian.deb

sudo dpkg -i /tmp/obsidian.deb

rm /tmp/obsidian.deb
