#!/bin/bash

set -e

if [ -d ~/.rocs_server1.3.0 ]; then
    cd ~/.rocs_server1.3.0 && git checkout . && git pull
else
    git clone -b v1.3.0 https://github.com/FFTAI/rocs_server.git ~/.rocs_server1.3.0
fi

cd ~/.rocs_server1.3.0/lib
sh install.sh

cd ~/.rocs_server1.3.0
rm -rf ./bin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/bin.zip
unzip bin.zip

cd ~/.rocs_server1.3.0
rm -rf ./sbin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/sbin.zip
unzip sbin.zip
