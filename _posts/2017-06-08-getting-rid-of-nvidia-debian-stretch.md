---
published: true
layout: post
date: '2017-06-08 10:47 +0200'
title: Getting rid of nvidia (Debian Stretch)
tags: linux
---
## Tested

from  
[https://wiki.debian.org/NvidiaGraphicsDrivers](https://wiki.debian.org/NvidiaGraphicsDrivers)  
[https://askubuntu.com/questions/360761/cannot-get-rid-of-nvidia-drivers-restore-nouveau-driver-and-get-desktop-working](https://askubuntu.com/questions/360761/cannot-get-rid-of-nvidia-drivers-restore-nouveau-driver-and-get-desktop-working)
 
    sudo apt-get purge nvidia. # (don't forget the "." dot) It erases every package with "nvidia"

    # sudo stop lightdm # ?

    # sudo apt install --reinstall xserver-xorg
    sudo apt install --reinstall xserver-xorg-video-nouveau

    # killall Xorg # ?
    
    sudo mv /etc/X11/xorg.conf ~/xorg.conf.nvidia.bak

    sudo reboot
    
    # getting vdpau to work with noveau driver
    sudo apt install mesa-vdpau-drivers
    
## Tearing test

    mpv https://www.youtube.com/watch?v=ceX18O9pvLs
