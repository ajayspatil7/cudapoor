#!/bin/bash

# Command 0
git config --global user.email "aspatil99451@gmail.com"
git config --global user.name "ajayspatil7"

# Command 1
echo "Getting CUDA KeyRing..."
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb

# Command 2
echo "Installing the debian package file..."
sudo dpkg -i cuda-keyring_1.1-1_all.deb

# Command 3
echo "Update the packages..."
sudo apt-get update

# Command 4
echo "Installing CUDA-toolkit"
sudo apt-get -y install cuda-toolkit-12-6

# Command 5
echo "Exporting the PATH and LD_LIBRARY_PATH variables"
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

# Command 6
source ~/.bashrc


echo "Success!"
