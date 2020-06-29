#!/bin/bash

#check/request root
sudo ls > /dev/null 2>&1

#set led indicator flashing on
./flash-error-on.sh &

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

#set led indicator flashing off
./flash-error-off.sh
