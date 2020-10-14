#!/bin/sh
cat << EOF
set nthreads 20
set _tilde 0

deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs) main restricted universe multiverse
deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu$(lsb_release -rs | tr -d ".")/x86_64  /
deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu$(lsb_release -rs | tr -d .)/x86_64 /
deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable
$(curl -s -L https://nvidia.github.io/nvidia-docker/$(lsb_release -rs)/nvidia-docker.list)
clean http://archive.ubuntu.com/ubuntu
EOF
