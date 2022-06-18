
sudo apt update -y
sudo apt upgrade -y

sudo apt install git cmake build-essential libuv1-dev libssl-dev libhwloc-dev -y
cd 
git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build
cd build
xmr-dir=$(pwd)

cmake -DWITH_HWLOC=OFF ..

make
xmrdir=$(pwd)

cat >> $PATH/xmrig<< EOF
#!$PATH/bash

# Start XMRig in Termux

case "$1" in
        start)
        .$xmrdir/xmrig -c
        ;;
        *)
        echo "Wrong peramiter"
        ;;
esac

EOF

chmod +x $xmrdir/xmrig
chmod +x $PATH/xmrig

#
echo "Go to \"https://xmrig.com/wizard\"  and  create your config.json settings"
echo "place your config.json file in /xmrig/build"
echo "Type the following command to start minimg =  \"./xmrig -c\"  or  \"xmrig start\""


