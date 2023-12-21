#!/bin/bash

APP_NAME=SonnieControl
pkill $APP_NAME

WORK_PATH=$(pwd)
BINARY_FILE_PATH=$WORK_PATH/bin

cd "$BINARY_FILE_PATH"/pythonscripts || exit 1
python3 abs_run.py
result=$(python3 checkabsjson.py)
if [ "$result" != "True" ];     then
        echo "abs not complete, retry"
        exit 1
fi

cd "$BINARY_FILE_PATH" || exit 1
LD_LIBRARY_PATH="$BINARY_FILE_PATH":$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

chmod 755 "$BINARY_FILE_PATH"/$APP_NAME

"$BINARY_FILE_PATH"/$APP_NAME