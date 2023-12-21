#!/bin/bash

source config/application.conf 2>/dev/null

#
USER_NAME=$(whoami)
echo "current_user: $USER_NAME"
echo "sdk_ctrl_path: " $sdk_ctrl_path

pkill $hand_app_name
pkill $app_name

rm -rf $log_file

cd "$sdk_ctrl_path"/pythonscripts || exit 1
python3 abs_run.py
result=$(python3 checkabsjson.py)
if [ "$result" != "True" ];     then
        echo "abs not complete, retry"
        exit 1
fi

cd "$sdk_ctrl_path" || exit 1
LD_LIBRARY_PATH="$sdk_ctrl_path":$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

chown -R $USER_NAME:$USER_NAME /tmp/log/FourierDynamics/FourierDynamicsLog.txt
chmod 777 $sdk_ctrl_path/$app_name
nohup $sdk_ctrl_path/$app_name > $log_file 2>&1 &

tail -f $log_file
