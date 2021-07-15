#!/bin/bash

version=$(cat ../6_nvidia-kernel/nvidia-kernel.info | grep VERSION | head -n 1 | cut -d '"' -f2)
link="https://download.nvidia.com/XFree86/Linux-x86_64/$version/NVIDIA-Linux-x86_64-$version.run"

cd ../7_nvidia-bumblebee/ || exit
wget -c $link

cd ../6_nvidia-kernel || exit
ln -s ../7_nvidia-bumblebee/NVIDIA-Linux-x86_64-*.run
