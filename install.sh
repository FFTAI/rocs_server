#!/bin/bash

set -e

if [ -d ~/.rocs_server ]; then
    cd ~/.rocs_server && git checkout . && git pull
else
    git clone https://github.com/FFTAI/rocs_server.git ~/.rocs_server
fi

cd ~/.rocs_server/lib
sh install.sh

cd ~/.rocs_server
rm -rf ./bin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/bin.zip
unzip bin.zip

cd ~/.rocs_server
rm -rf ./sbin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/sbin.zip
unzip sbin.zip