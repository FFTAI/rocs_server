#!/bin/bash

FILE_FULL_PATH=$0
FILE_NAME=${FILE_FULL_PATH##*/}
FILE_PATH=$(find -name "$FILE_NAME" | awk '{print $1}')
cd $(dirname "$FILE_PATH")
WORK_PATH=$(pwd)
echo "current_file: $WORK_PATH/$FILE_NAME"
echo "   WORK_PATH: $WORK_PATH"

cd $WORK_PATH/bin/sdk
sh start_gros_sdk_server.sh

# cd $WORK_PATH/bin/sdk/ctrl
# sh gr1_ctrl.sh
