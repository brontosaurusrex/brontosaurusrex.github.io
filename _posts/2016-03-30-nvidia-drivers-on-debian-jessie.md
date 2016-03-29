---
published: true
layout: post
date: "2016-03-30 00:27 +0200"
title: Nvidia drivers on Debian jessie
---


[https://linuxconfig.org/nvidia-geforce-driver-installation-on-debian-jessie-linux-8-64bit](https://linuxconfig.org/nvidia-geforce-driver-installation-on-debian-jessie-linux-8-64bit)

Short story:

a. Enable contrib & non-free in sources.list

b.

    sudo apt-get install nvidia-driver nvidia-settings nvidia-xconfig 
    sudo nvidia-xconfig 
    sudo reboot
    glxinfo
