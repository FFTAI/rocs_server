#!/bin/bash

set -e

rocs_server_dir="~/.rocs_server1.3.0"

# 检查目录是否已存在
if [ -d "$rocs_server_dir" ]; then
  echo "目录 $rocs_server_dir 已经存在，请删除后再运行脚本。"
  exit 1
fi

# Clone rocs_server repository and switch to v1.3.0 branch
git clone -b v1.3.0 https://github.com/FFTAI/rocs_server.git "$rocs_server_dir"

# Install dependencies in the lib directory
cd "$rocs_server_dir/lib"
sh install.sh

# Download and extract bin.zip
cd "$rocs_server_dir"
rm -rf ./bin*
wget -c https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/bin.zip
unzip -o bin.zip

# Download and extract sbin.zip
cd "$rocs_server_dir"
rm -rf ./sbin*
wget -c https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/sbin.zip
unzip -o sbin.zip

if [ ! -d "$rocs_server_dir/bin" ] || [ ! -d "$rocs_server_dir/sbin" ]; then
  echo "Failed to download and extract necessary files."
  exit 1
fi

echo "you are success！"
