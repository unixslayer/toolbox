#!/usr/bin/env bash

if [ "$(id -u)" == "0" ]; then
   echo "This script can't be run as root. root permissions will be asked if required ;)" 1>&2
   exit 1
fi

cd ~

printf "\n* Installing Hamster aplet *\n\n"

arch=$(dpkg --print-architecture)
wnck_deb="python-wnck_2.32.0+dfsg-4_${arch}.deb"
libwnck22_deb="libwnck22_2.30.7-5.1ubuntu1_${arch}.deb"
libwnck_common_deb="libwnck-common_2.30.7-5.1ubuntu1_all.deb"
hamster_deb="hamster-applet_2.91.3+git20120514.b9fec3e1-1ubuntu2_all.deb"

wget "http://archive.ubuntu.com/ubuntu/pool/universe/libw/libwnck/${libwnck22_deb}"
wget "https://mirrors.xmission.com/ubuntu/pool/universe/g/gnome-python-desktop/${wnck_deb}"
wget "https://mirrors.xmission.com/ubuntu/pool/universe/h/hamster-applet/${hamster_deb}"
wget "http://archive.ubuntu.com/ubuntu/pool/universe/libw/libwnck/${libwnck_common_deb}"

sudo dpkg -i "${libwnck_common_deb}"
sudo dpkg -i "${libwnck22_deb}"
sudo dpkg -i "${wnck_deb}"
sudo apt --fix-broken install -y
sudo apt -y install python-gconf python-gnome2 libbonoboui2-0 libgnomecanvas2-0 libgnomeui-0 python-pyorbit libglade2-0 libbonoboui2-common libgnomecanvas2-common libgnome-keyring0 libgnomeui-common liborbit2 libgnome-keyring-common libidl-2-0
sudo dpkg -i "${hamster_deb}"
sudo apt --fix-broken install -y
sudo apt -y install libcanberra-gtk3-module

printf "\n* Installing Hamster GNOME Extention *\n\n"

git clone https://github.com/projecthamster/hamster-shell-extension.git
cd hamster-shell-extension
git checkout develop
make dist

mkdir -p ~/.local/share/gnome-shell/extensions/contact@projecthamster.org

tar -xvzf dist/contact@projecthamster.org.tgz -C ~/.local/share/gnome-shell/extensions/contact@projecthamster.org

printf "\n* Cleanup *\n\n"

cd ~

rm "${wnck_deb}"
rm "${libwnck22_deb}"
rm "${libwnck_common_deb}"
rm "${hamster_deb}"
rm -rf hamster-shell-extension
