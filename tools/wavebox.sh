#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

cd ~

arch=$(arch)

wget -qO - https://wavebox.io/dl/client/repo/archive.key | sudo apt-key add -
echo "deb https://wavebox.io/dl/client/repo/ ${arch}/" | sudo tee --append /etc/apt/sources.list.d/repo.list
sudo apt -y update
sudo apt -y install wavebox
sudo apt -y install ttf-mscorefonts-installer
