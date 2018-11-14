#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

cd ~

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`

install_git () {
  printf "\n${green}* Installing GIT *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/git.sh -O -)"
}

install_docker () {
  printf "\n${green}* Installing Docker *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/docker.sh -O -)"
}

install_virtualbox () {
  printf "\n${green}* Installing Virtualbox *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/virtualbox.sh -O -)"
}

install_vagrant () {
  printf "\n${green}* Installing Vagrant *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/vagrant.sh -O -)"
}

install_hamster () {
  printf "\n${green}* Installing Hamster *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/hamster.sh -O -)"
}

install_ansible () {
  printf "\n${green}* Installing Ansible *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/ansible.sh -O -)"
}

install_zsh () {
  printf "\n${green}* Installing Oh My Zsh *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/zsh.sh -O -)"
}

install_php () {
  printf "\n${green}* Installing PHP *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/php.sh -O -)"
}

install_phpbrew () {
  printf "\n${green}* Installing PHPBrew *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/phpbrew.sh -O -)"
}

install_wavebox () {
  printf "\n${green}* Installing Wavebox *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/wavebox.sh -O -)"
}

install_dropbox () {
  printf "\n${green}* Installing Dropbox *${reset}\n\n"
  bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/dropbox.sh -O -)"
}

print_help () {
  cat <<HEREDOC

${yellow}--- TOOLER ---${reset}

Development toolkit installer for ${blue}Ubuntu 18.04${reset}

USAGE:
${green}
  \$ wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tooler.sh
  \$ chmod +x tooler.sh

  \$ ./tooler.sh ${red}[tool,] ${yellow}<tool parameter>
${reset}
AVAILABLE TOOLS:
  - git
  - docker
  - ansible
  - php
  - phpbrew
  - vagrant
  - virtualbox
  - zsh
  - hamster
  - wavebox
  - dropbox

EXAMPLE:

To install GIT with additional user configuration:
${green}
  \$ ./tooler.sh git --git-user=ubuntu --git-email=user@ubuntu.com
${reset}

To install GIT, Docker and Virtualbox:
${green}
  \$ ./tooler.sh git docker virtualbox
${reset}

To install everything:
${green}
  \$ ./tooler.sh all
${reset}

HEREDOC
}

if [ "$#" == 0 ]; then
    print_help
    exit
fi

printf "\n${red}* Update & upgrade system *${reset}\n\n"

sudo apt update -y && sudo apt upgrade -y

while [ $# -gt 0 ]
do
    if [ $1 == 'all' -o $1 == 'git' ]; then
      install_git
    fi
    if [ $1 == 'all' -o $1 == 'docker' ]; then
      install_docker
    fi
    if [ $1 == 'all' -o $1 == 'virtualbox' ]; then
      install_virtualbox
    fi
    if [ $1 == 'all' -o $1 == 'vagrant' ]; then
      install_vagrant
    fi
    if [ $1 == 'all' -o $1 == 'hamster' ]; then
      install_hamster
    fi
    if [ $1 == 'all' -o $1 == 'ansible' ]; then
      install_ansible
    fi
    if [ $1 == 'all' -o $1 == 'zsh' ]; then
      install_zsh
    fi
    if [ $1 == 'all' -o $1 == 'php' ]; then
      install_php
    fi
    if [ $1 == 'all' -o $1 == 'phpbrew' ]; then
      install_phpbrew
    fi
    if [ $1 == 'all' -o $1 == 'wavebox' ]; then
      install_wavebox
    fi
    if [ $1 == 'all' -o $1 == 'dropbox' ]; then
      install_dropbox
    fi
    shift
done
