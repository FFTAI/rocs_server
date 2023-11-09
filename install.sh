git clone -b v1.3.0 https://github.com/FFTAI/rocs_server.git ~/.rocs_server1.3.0

cd ~/.rocs_server1.3.0/lib
sh install_env.sh

cd ~/.rocs_server1.3.0
rm -rf ./bin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/bin.zip
unzip bin.zip

cd ~/.rocs_server1.3.0
rm -rf ./sbin*
wget https://github.com/FFTAI/rocs_server/releases/download/v1.3.0/sbin.zip
unzip sbin.zip
