#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

ARGUMENT_LIST=(
    "git-user"
    "git-email"
)

opts=$(getopt \
    --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
    --longoptions git-gui \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

git_email=""
git_user=""
git_gui=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --git-gui)
      git_gui=1
      shift 2
      ;;
  --git-email)
    git_email=$2
    shift 2
    ;;
    --git-user)
      git_user=$2
      shift 2
      ;;
    *)
      break
      ;;
  esac
done

cd ~

printf "\n* Installing GIT *\n"

sudo apt install -y -qq git-core

if [ $git_gui -eq 1 ]; then
  printf "\n\ninstalling git-gui\n\n"
  sudo apt install -y -qq git-gui gitk
fi

git --version

if [ "$git_user" != "" ]; then
  git config --global user.name "$git_user"
fi

if [ "$git_email" != "" ]; then
  git config --global user.email "$git_email"
fi
