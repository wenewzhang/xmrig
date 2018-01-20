#!/bin/sh
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev
git clone https://github.com/wenewzhang/xmrig.git wkrig
cd wkrig
mkdir build
cd build
cmake .. 
make
mv xmrig wkrig
cp ../src/config_vps.json config.json
