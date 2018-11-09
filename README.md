# Ubuntu initial software

This repo holds some scripts to install tools for web development on Ubuntu

## Usage

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/environment.sh -O -)"`

## Current installs

- [GIT](https://git-scm.com) - with additional configuration possible. GIT will be installed with [gitk](https://git-scm.com/docs/gitk) and [git-gui](https://git-scm.com/docs/git-gui).
- [Docker](https://docs.docker.com) - with docker-compose and docker-machine
- [Ansible](https://docs.ansible.com/)
- [Vagrant](https://vagrantup.com)
- [VirtualBox](https://virtualbox.org)
- [Hamster Time Tracker](https://github.com/projecthamster/hamster) - GNOME only
- [PHP](https://php.net) - by default PHP7.2 with [Composer](https://getcomposer.org)
- [PHPBrew](https://github.com/phpbrew/phpbrew)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

### GIT installation options

Some options let you setup configuration:

- `--git-user` - allows to set GIT user.name in global configuration
- `--git-email` - allows to set GIT user.email in global configuration

And some let you skip installations

- `--skip-git` - skip GIT installation
- `--skip-docker` - skip Docker installation
- `--skip-ansible` - skip Ansible installation
- `--skip-hamster` - skip Hamster Time Tracker installation
- `--skip-vagrant` - skip Vagrant installation
- `--skip-vbox` - skip Virtualbox installation
- `--skip-php` - skip PHP installation
- `--skip-phpbrew` - skip PHPBrew installation
- `--skip-zsh` - skip Oh My Zsh installation
