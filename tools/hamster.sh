#!/usr/bin/env bash

cd ~

wget https://mirrors.xmission.com/ubuntu/pool/universe/g/gnome-python-desktop/python-wnck_2.32.0+dfsg-4_amd64.deb
wget https://mirrors.xmission.com/ubuntu/pool/universe/h/hamster-applet/hamster-applet_2.91.3+git20120514.b9fec3e1-1ubuntu2_all.deb

sudo apt -y install libwnck22 libwnck-common
sudo dpkg -i python-wnck_2.32.0+dfsg-4_amd64.deb
sudo apt --fix-broken install -y
sudo apt -y install python-gconf python-gnome2 libbonoboui2-0 libgnomecanvas2-0 libgnomeui-0 python-pyorbit libglade2-0 libbonoboui2-common libgnomecanvas2-common libgnome-keyring0 libgnomeui-common liborbit2 libgnome-keyring-common libidl-2-0
sudo dpkg -i hamster-applet_2.91.3+git20120514.b9fec3e1-1ubuntu2_all.deb
sudo apt --fix-broken install -y
sudo apt -y install libcanberra-gtk-module

rm python-wnck_2.32.0+dfsg-4_amd64.deb
rm hamster-applet_2.91.3+git20120514.b9fec3e1-1ubuntu2_all.deb
