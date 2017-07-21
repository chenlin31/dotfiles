#ubuntu16.04 cirkit install script
apt-get update
apt-get install build-essential git g++ cmake libgmp3-dev libxml2-dev libz-dev cmake-curses-gui libreadline-dev libpython3-all-dev mercurial samba smbclient cups
git clone https://github.com/msoeken/cirkit.git
cd cirkit
mkdir build
./utils/tools.py install boost
cd build
cmake -DBoost_NO_SYSTEM_PATHS=TRUE -DBOOST_ROOT:PATHNAME=`pwd`/tools/boost_1_63_0/ ..
make external
make cirkit
cd ..
#http://localhost:631/
#hp laserket p2055d
#add printer: smb://10.22.72.180/411

