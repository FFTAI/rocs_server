#!/bin/bash

WORK_PATH=$(pwd)
echo " WORK_PATH: $WORK_PATH"

cd $WORK_PATH/create_ap
make install

rm -rf $WORK_PATH/eigen/build
mkdir -p $WORK_PATH/eigen/build
cd $WORK_PATH/eigen/build
cmake ..
make
make install
rm -rf $WORK_PATH/eigen/build


rm -rf $WORK_PATH/qpOASES/build
mkdir -p $WORK_PATH/qpOASES/build
cd $WORK_PATH/qpOASES/build
cmake ..
make
make install
rm -rf $WORK_PATH/qpOASES/build


rm -rf $WORK_PATH/rbdl/build
rm -rf /usr/bin/librbdl.*
rm -rf /usr/local/include/rbdl
mkdir -p $WORK_PATH/rbdl/build
cd $WORK_PATH/rbdl/build
cmake ..
make
make install
cp -r librbdl.* /usr/bin/


cd $WORK_PATH/portaudio
make
make install


ldconfig
