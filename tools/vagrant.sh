#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

vagrant_version="2.2.0"
arch=$(arch)
deb="vagrant_${vagrant_version}_${arch}.deb"

cd ~

wget "https://releases.hashicorp.com/vagrant/${vagrant_version}/${deb}"

sudo dpkg -i "${deb}"

rm "${deb}"
