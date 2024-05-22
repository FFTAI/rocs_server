#!/bin/bash

set -e

sudo apt update 
sudo apt install --fix-broken 
sudo apt install hostapd dnsmasq cmake libeigen3-dev build-essential cmake-curses-gui libunittest++-dev qtbase5-dev tmux wget liburdfdom-dev libtinyxml2-dev -y


wget -O rocs-libs.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/libs/rocs-libs_1.1.deb

wget -O rocs-svr.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/server/rocs-svr_v2.0.10.deb

wget -O rocs-control.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/control/rocs-control_1.3.deb

wget -O rocs-wifi.deb -q --show-progress https://rocs-1302548221.cos.ap-shanghai.myqcloud.com/hostpot/rocs-wifi_1.0.deb

sudo dpkg -i rocs-libs.deb 

sudo dpkg -i rocs-svr.deb

sudo dpkg -i rocs-control.deb

sudo dpkg -i rocs-wifi.deb
