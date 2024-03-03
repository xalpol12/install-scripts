#!/usr/bin/env bash

mvn_version=3.9.6
archive_name="apache-maven-${mvn_version}-bin.tar.gz"
dir_name="apache-maven-${mvn_version}"

wget https://dlcdn.apache.org/maven/maven-3/${mvn_version}/binaries/${archive_name}
tar -xvzf "$archive_name"
sudo rm -r "$archive_name"
sudo mkdir /opt/maven
sudo mv $dir_name /opt/maven

echo "M2_HOME='/opt/maven/${dir_name}'" >> ~/.profile
echo "PATH=\"\$M2_HOME/bin:\$PATH\"" >> ~/.profile
echo "export PATH" >> ~/.profile

source ~/.profile

echo "Maven installed successfully"
