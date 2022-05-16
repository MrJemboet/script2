#!usr/bin/bash
echo "SEDANG MENGINSTALL TOOL UNTUK MINING XMRIG TUNGGU SAMPAI SELESAI"
apt update && apt upgrade
apt-get install wget
apt-get install proot
apt-get install nano
apt-get install zip
apt-get install git
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
wget https://github.com/dikripto/xmrig/archive/refs/heads/master.zip
unzip master.zip
rm -rf master.zip
cd xmrig-master
mkdir build
cd build
cmake .. -DWITH_HWLOC=OFF
make
wget https://gist.githubusercontent.com/dytra/5b17acdd38fcabba83e6411f38cce5ad/raw/9214159292a479ec5c27ac7ea28d0da00ca99d4f/config.json
echo "INSTALL SUDAH SELESAI SILAHKAN BUKA BUKA DULU FILE CONFIG.JSON DENGAN COMMAND nano config.json "

