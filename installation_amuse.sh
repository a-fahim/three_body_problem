%%bash

############################### 
# INSTALLING THE PREREQUISITES
sudo apt update
sudo apt install build-essential

sudo apt-get install build-essential gfortran python3-dev \
  libopenmpi-dev openmpi-bin \
  libgsl-dev cmake libfftw3-3 libfftw3-dev \
  libgmp3-dev libmpfr6 libmpfr-dev \
  libhdf5-serial-dev hdf5-tools \
  libblas-dev liblapack-dev \
  python3-venv python3-pip git

# sudo apt install gcc-12

pip install --upgrade pip
pip install numpy docutils mpi4py h5py wheel
pip install scipy astropy jupyter pandas seaborn matplotlib

################## 
# INSTALLING AMUSE

PACKAGES="amuse-framework amuse-hermite amuse-huayno amuse-ph4 amuse-brutus"
# PACKAGES="amuse-framework amuse"

# skip in case a full development install is present
pip show amuse-devel && exit 0
for package in ${PACKAGES} 
do
  pip show ${package} || pip install ${package}
done