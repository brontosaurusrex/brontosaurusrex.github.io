---
published: true
layout: post
date: '2018-01-13 19:33 +0100'
title: cuda thing
tags: linux
---
Install the driver that comes with this cuda thing!

## cuda installer says

Driver:   Installed
Toolkit:  Installed in /usr/local/cuda-9.1
Samples:  Installed in /home/user/cuda_samples, but missing recommended libraries

Please make sure that
 -   PATH includes /usr/local/cuda-9.1/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-9.1/lib64, or, add /usr/local/cuda-9.1/lib64 to /etc/ld.so.conf and run ldconfig as root

To uninstall the CUDA Toolkit, run the uninstall script in /usr/local/cuda-9.1/bin
To uninstall the NVIDIA Driver, run nvidia-uninstall

Please see CUDA_Installation_Guide_Linux.pdf in /usr/local/cuda-9.1/doc/pdf for detailed information on setting up CUDA.

Logfile is /tmp/cuda_install_3054.log

## notes:

    sudo service lightdm stop
    sudo apt remove nvidia*
    
I added this path to .bashrc

    PATH="/usr/local/cuda-9.1/bin:${PATH}"
    
req

    sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
    sudo apt install libssl1.0-dev
    
ld.so

    sudo cat /etc/ld.so.conf
    include /etc/ld.so.conf.d/*.conf
    /usr/local/cuda-9.1/lib64/

    sudo ldconfig

cc miner compile
https://www.reddit.com/r/gpumining/comments/7igqx3/trouble_compiling_ccminer_under_ubuntu_16/

    ./autogen.sh
    ./configure --with-cuda --with-libcurl --with-nvml (drop the nvml if you don't care about it)
    edit the Makefile (not .am!) and set both CPPFLAGS and CUDA_CFLAGS to = -I/usr/local/cuda-9.1/include
    add the cuda library path (-L/usr/local/cuda-9.1/lib64 to CUDA_LIBS). Mine already had CUDA_LIBS = -lcudart so it ended up being CUDA_LIBS = -L/usr/local/cuda-9.1/lib64 -lcudart.
        for some reason -lcudart was hardcoded further down in ccminer_LDADD, so I just changed the -lcudart there to $(CUDA_LIBS)
    make
