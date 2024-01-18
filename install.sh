#!/bin/bash

set -e

sudo apt update -y
sudo apt --fix-broken install -y
sudo apt install hostapd -y
sudo apt install dnsmasq -y
sudo apt install cmake -y
sudo apt install libeigen3-dev -y
sudo apt install build-essential -y
sudo apt install cmake-curses-gui -y
sudo apt install libunittest++-dev -y
sudo apt install qtbase5-dev -y
sudo apt install tmux -y
sudo apt install wget -y
sudo apt install liburdfdom-dev -y 
sudo apt install libtinyxml2-dev -y

wget -O rocs-libs.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/libs/rocs-libs_1.0.deb

wget -O rocs-svr.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/server/rocs-svr_v2.0.7.deb

wget -O rocs-webots.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/webots/rocs-webots_1.3.deb

wget -O rocs-control.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/control/rocs-control_1.3.deb

wget -O rocs-wifi.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/hostpot/rocs-wifi_1.0.deb

sudo dpkg -i rocs-libs.deb 

sudo dpkg -i rocs-svr.deb

sudo dpkg -i rocs-webots.deb

sudo dpkg -i rocs-control.deb

sudo dpkg -i rocs-wifi.deb
