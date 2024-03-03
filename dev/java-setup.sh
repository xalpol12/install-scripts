#!/usr/bin/env bash

jdk=jdk-21.0.2
archive_name="open${jdk}_linux-x64_bin.tar.gz"

wget https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/${archive_name}
tar -xvzf "$archive_name"
sudo rm -r "$archive_name"
sudo mkdir /opt/jvm
sudo mv $jdk /opt/jvm

echo "JAVA_HOME='/opt/jvm/${jdk}'" >> ~/.profile
echo "PATH=\"\$JAVA_HOME/bin:\$PATH\"" >> ~/.profile
echo "export PATH" >> ~/.profile

source ~/.profile

echo "Jdk installed successfully"
