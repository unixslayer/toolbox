# Tooler

This repo holds some scripts to install tools for web development on Ubuntu

## Usage

Following command will install all included tool

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tooler.sh -O -)" all`

## Currently included tools

- [GIT](https://git-scm.com)
- [Docker](https://docs.docker.com) - with docker-compose and docker-machine
- [Ansible](https://docs.ansible.com/)
- [Vagrant](https://vagrantup.com)
- [VirtualBox](https://virtualbox.org)
- [Hamster Time Tracker](https://github.com/projecthamster/hamster) - GNOME only
- [PHP](https://php.net) - by default PHP7.2 with [Composer](https://getcomposer.org)
- [PHPBrew](https://github.com/phpbrew/phpbrew)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Wavebox](https://wavebox.io/)
- [Dropbox](https://www.dropbox.com/)

### GIT

To separately install GIT, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/git.sh -O -)"`

Additional configuration:

- `--git-gui` - allows to install with additional [gitk](https://git-scm.com/docs/gitk) and [git-gui](https://git-scm.com/docs/git-gui)
- `--git-user` - allows to set GIT user.name in global configuration
- `--git-email` - allows to set GIT user.email in global configuration

### Docker

To separately install Docker, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/docker.sh -O -)"`

### Ansible

To separately install Ansible, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/ansible.sh -O -)"`

### Hamster

To separately install Hamster, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/hamster.sh -O -)"`

### VirtualBox

To separately install VirtualBox, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/virtualbox.sh -O -)"`

### Vagrant

To separately install Vagrant, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/vagrant.sh -O -)"`

Additional configuration:

- `--vagrant-version` - Vagrant version to install. Default is 2.2.0

### Oh My Zsh

To separately install Oh My Zsh, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/zsh.sh -O -)"`

### PHP

To separately install GIT, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/php.sh -O -)"`

Additional configuration:

- `--php-version` - PHP version to install. Default is 7.2

### PHPBrew

To separately install PHPBrew, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/phpbrew.sh -O -)"`

### Wavebox

To separately install Wavebox, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/wavebox.sh -O -)"`

### Dropbox

To separately install Dropbox, use following command:

`bash -c "$(wget https://raw.githubusercontent.com/unixslayer/tooler/master/tools/dropbox.sh -O -)"`
