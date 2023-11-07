sudo apt update -y
sudo apt upgrade -y
sudo apt --fix-broken install -y
sudo apt install cmake -y
sudo apt install libeigen3-dev -y
sudo apt install build-essential -y
sudo apt install cmake-curses-gui -y
sudo apt install libunittest++-dev -y
sudo apt install qtbase5-dev -y

WORK_PATH=$(pwd)
echo "current_file: $WORK_PATH/$FILE_NAME"
echo "   WORK_PATH: $WORK_PATH"

sudo rm -rf $WORK_PATH/eigen/build
mkdir -p $WORK_PATH/eigen/build
cd $WORK_PATH/eigen/build
cmake ..
make
sudo make install
sudo rm -rf $WORK_PATH/eigen/build

sudo rm -rf $WORK_PATH/qpOASES/build
mkdir -p $WORK_PATH/qpOASES/build
cd $WORK_PATH/qpOASES/build
cmake ..
make
sudo make install
sudo rm -rf $WORK_PATH/qpOASES/build

sudo rm -rf $WORK_PATH/rbdl/build
sudo rm -rf /usr/bin/librbdl.*
sudo rm -rf /usr/local/include/rbdl
mkdir -p $WORK_PATH/rbdl/build
cd $WORK_PATH/rbdl/build
cmake ..
make
sudo make install
sudo cp -f librbdl.* /usr/bin/

sudo ldconfig