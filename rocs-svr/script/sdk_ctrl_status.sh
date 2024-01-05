#!/bin/bash

source config/application.conf 2>/dev/null

result=$(ps aux | grep $app_name | grep -v grep | awk '{print $2}')

if [ -z $result ]; then
  echo 'not running'
  exit 0
else :
  echo 'is running'
  exit 1
fi