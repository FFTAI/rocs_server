#!/bin/bash

FILE_FULL_PATH=$0
FILE_NAME=${FILE_FULL_PATH##*/}
FILE_PATH=$(find -name "$FILE_NAME" | awk '{print $1}')
cd $(dirname "$FILE_PATH")
WORK_PATH=$(pwd)
echo "current_file: $WORK_PATH/$FILE_NAME"
echo "   WORK_PATH: $WORK_PATH"

cd $WORK_PATH/lib
echo 'install lib*....'
sudo sh build_gr1.sh

echo 'RoCS bin in: $WORK_PATH/bin'
echo 'RoCS webots in: $WORK_PATH/bin/webots/webotsim/worlds'


cd $WORK_PATH
echo 'install Webots....'
sudo dpkg -i webots_2023b_amd64.deb


echo 'RoCS installed successfully...'