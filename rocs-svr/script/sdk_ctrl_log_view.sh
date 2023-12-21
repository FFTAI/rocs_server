#!/bin/bash

source config/application.conf 2>/dev/null

echo "tail -f $log_file"
tail -f $log_file
