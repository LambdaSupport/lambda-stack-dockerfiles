#!/bin/sh
cat << EOF
set nthreads 20
set _tilde 0

deb http://archive.ubuntu.com/ubuntu $(lsb_release -cs) main restricted universe multiverse
deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu$(lsb_release -rs | tr -d ".")/x86_64  /
deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu$(lsb_release -rs | tr -d .)/x86_64 /
deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable
deb https://nvidia.github.io/ubuntu$(lsb_release -rs)/libnvidia-container/stable/\$(ARCH) /
deb https://nvidia.github.io/ubuntu$(lsb_release -rs)/nvidia-container-runtime/stable/\$(ARCH) /
deb https://nvidia.github.io/ubuntu$(lsb_release -rs)/nvidia-docker/\$(ARCH) /
clean http://archive.ubuntu.com/ubuntu
EOF
