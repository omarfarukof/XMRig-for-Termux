pkg upgrade -y
apt update -y
apt update -y

apt install git cmake -y

git clone https://github.com/xmrig/xmrig.git
cd xmrig

mkdir build
cd build
cmake -DWITH_HWLOC=OFF ..

make


#
echo "Go to \"https://xmrig.com/wizard\"  and  create your config.json settings"
echo "place your config.json file in /xmrig/build"
echo "Type the following command to start minimg =  ./xmrig -c"


