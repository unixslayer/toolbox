#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/git.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/docker.sh -O -)"
bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/php.sh -O -)"
