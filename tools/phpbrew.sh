#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

opts=$(getopt \
    --longoptions "skip-phpbrew" \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-phpbrew)
      exit 0;
      ;;
    *)
      break
      ;;
  esac
done

cd ~

printf "\n* Installing PHPBrew *\n\n"

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

sudo mv phpbrew /usr/local/bin/phpbrew

phpbrew init

if [ -f ~/.zshrc ]; then
  echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.zshrc
  source ~/.zshrc
else
  echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
  source ~/.bashrc
fi
