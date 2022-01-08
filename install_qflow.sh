mkdir qflow
cd qflow

# common needed packages
sudo apt install make git tcl tcl-dev python3-pip

# needed for yosys
sudo apt install build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev

git clone https://github.com/YosysHQ/yosys.git
cd yosys
make
sudo make install

cd ..

# needed for graywolf
sudo apt install cmake libgsl-dev libx11-dev

git clone https://github.com/rubund/graywolf.git
cd graywolf
mkdir build
cd build
cmake ..
make
sudo make install

cd ../..

sudo apt install qrouter magic netgen

which yosys
which graywolf
which qrouter
which magic
which netgen

# needed by qflow
sudo apt install tcsh python3-tk

git clone https://github.com/RTimothyEdwards/qflow.git
cd qflow
./configure
make
sudo make install

