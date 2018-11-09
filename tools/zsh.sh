#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

opts=$(getopt \
    --longoptions "skip-zsh" \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-zsh)
      exit 0;
      ;;
    *)
      break
      ;;
  esac
done

cd ~

printf "\n* Ensure zsh is installed *\n\n"

sudo apt install -y zsh

printf "\n* Installing Oh My Zsh *\n\n"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
