#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

php_version=7.2

ARGUMENT_LIST=(
    "php-version"
)

opts=$(getopt \
    --longoptions "$(printf "%s:," "${ARGUMENT_LIST[@]}")" \
    --longoptions "skip-php" \
    --name "$(basename "$0")" \
    --options "" \
    -- "$@"
)

eval set --$opts

while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-php)
      exit 0;
      ;;
    --php-version)
      php_version=$2
      shift 2
      ;;
    *)
      break
      ;;
  esac
done

cd ~

printf "\n* Adding ppa:ondrej/php *\n\n"

sudo add-apt-repository -y ppa:ondrej/php && sudo apt-get update -y

printf "\n* Installing PHP${php_version} with additional libraries and extentions *\n\n"

sudo apt install \
  php${php_version} \
  php${php_version}-curl \
  php${php_version}-json \
  php${php_version}-cgi \
  php${php_version}-fpm \
  php${php_version}-bcmath \
  php${php_version}-dom \
  php${php_version}-xml \
  php${php_version}-mbstring \
  php${php_version}-gd \
  php${php_version}-mysql \
  php${php_version}-fpm \
  php${php_version}-sqlite3 \
  php${php_version}-soap \
  php${php_version}-zip \
  php${php_version}-intl \
  autoconf \
  automake \
  libxml2-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  openssl \
  gettext \
  libicu-dev \
  libmcrypt-dev \
  libmcrypt4 \
  libbz2-dev \
  libreadline-dev \
  build-essential \
  libmhash-dev \
  libmhash2 \
  libxslt1-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libxslt1-dev \
  libjpeg-dev

printf "\n* Installing Composer *\n\n"

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
