#!/bin/bash

#get this repository
#wget https://github.com/wtrabbit/pihive/archive/master.zip && unzip master.zip && rm master.zip && cd pihive-master

#update and upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

#install components
sudo apt install git -y

#install uhubctl git
sudo apt install libusb-1.0-0-dev -y
git clone https://github.com/mvp/uhubctl
cd uhubctl
make
cd ..

