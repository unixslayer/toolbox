# Ubuntu initial software

This repo holds some scripts to install tools for web development on Ubuntu

## Usage

Following command will install all included tool

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/environment.sh -O -)" all`

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

### GIT

To separately install GIT, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/git.sh -O -)"`

Additional configuration:

- `--git-user` - allows to set GIT user.name in global configuration
- `--git-email` - allows to set GIT user.email in global configuration

### Docker

To separately install Docker, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/docker.sh -O -)"`

### Ansible

To separately install Ansible, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/ansible.sh -O -)"`

### Hamster

To separately install Hamster, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/hamster.sh -O -)"`

### VirtualBox

To separately install VirtualBox, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/virtualbox.sh -O -)"`

### Vagrant

To separately install Vagrant, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/vagrant.sh -O -)"`

Additional configuration:

- `--vagrant-version` - Vagrant version to install. Default is 2.2.0

### Oh My Zsh

To separately install Oh My Zsh, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/zsh.sh -O -)"`

### PHP

To separately install GIT, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/php.sh -O -)"`

Additional configuration:

- `--php-version` - PHP version to install. Default is 7.2

### PHPBrew

To separately install PHPBrew, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/ubuntu-init/master/tools/phpbrew.sh -O -)"`
