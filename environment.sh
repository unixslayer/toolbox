#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

cd ~

printf "\n* Update & upgrade system *\n\n"

sudo apt update -y && sudo apt upgrade -y

bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/git.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/docker.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/virtualbox.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/vagrant.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/hamster.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/ansible.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/zsh.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/php.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/phpbrew.sh -O -)"
