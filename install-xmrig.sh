pkg upgrade -y
apt update -y
apt update -y

apt install git cmake -y
cd 
git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build
cd build

cmake -DWITH_HWLOC=OFF ..

make

cat >> $PATH/xmrig<< EOF
#!$PATH/bash

# Start XMRig in Termux

case "$1" in
        start)
        ./data/data/com.termux/files/home/xmrig/build/xmrig -c
        ;;
        *)
        echo "Wrong peramiter"
        ;;
esac

EOF

chmod +x /data/data/com.termux/files/home/xmrig/build/xmrig
chmod +x $PATH/xmrig

#
echo "Go to \"https://xmrig.com/wizard\"  and  create your config.json settings"
echo "place your config.json file in /xmrig/build"
echo "Type the following command to start minimg =  \"./xmrig -c\"  or  \"xmrig start\""


