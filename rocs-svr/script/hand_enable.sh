#!/bin/bash

source config/application.conf 2>/dev/null

nohup  /usr/local/bin/rocs-svr/$hand_app_name* > $log_file 2>&1 &