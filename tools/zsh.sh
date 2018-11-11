#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

cd ~

printf "\n* Ensure zsh is installed *\n\n"

sudo apt install -y zsh

printf "\n* Installing Oh My Zsh *\n\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
