---
published: true
layout: post
date: '2017-10-10 12:55 +0200'
title: when mining stops
tags: cli
---
    aptitude -r install linux-headers-$(uname -r|sed 's/[^-]*-[^-]*-//')
    cd Downloads
    sudo ./NVIDIA(tab)
    # when complains
    # kill lightdm Xorg somehow
    sudo ./NVIDIA(tab)
    reboot
    # and on and on and on
    
Also lightdm odnosno Xorg must be running for some reason for overclockX script to have some effect, check with

    pgrep -x lightdm # and
    pgrep -x Xorg
    
Maybe this will be automagic in future if

    sudo apt install dkms
