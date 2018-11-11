#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

vagrant_version="2.2.0"
arch=$(arch)

ARGUMENT_LIST=(
    "vagrant-version"
)

opts=$(getopt \
    --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
  case "$1" in
    --vagrant-version)
      vagrant_version=$2
      shift 2
      ;;
    *)
      break
      ;;
  esac
done

deb="vagrant_${vagrant_version}_${arch}.deb"

cd ~

printf "\n* Installing Vagrant *\n\n"

wget "https://releases.hashicorp.com/vagrant/${vagrant_version}/${deb}"

sudo dpkg -i "${deb}"

rm "${deb}"

printf "\n* Installing vagrant-bindfs plugin *\n\n"

vagrant plugin install vagrant-bindfs
