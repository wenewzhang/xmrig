#!/bin/sh
sudo yum install -y epel-release
sudo yum install -y git make cmake gcc gcc-c++ libstdc++-static libmicrohttpd-devel libuv-static
git clone https://github.com/wenewzhang/xmrig.git wkrig
cd rkrig
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DUV_LIBRARY=/usr/lib64/libuv.a
make
mv xmrig wkrig
cp ../src/config_vps.json config.json
