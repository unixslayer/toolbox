#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

source $(pwd)/tools/git.sh
source $(pwd)/tools/docker.sh
