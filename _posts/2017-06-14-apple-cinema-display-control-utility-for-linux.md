---
published: true
layout: post
date: '2017-06-14 23:15 +0200'
title: Apple Cinema Display Control Utility for Linux
tags: cli linux
---
    git clone https://github.com/warvariuc/acdcontrol
    make
    # sudo chown ticho:users /dev/usb/hiddev0
    ./acdcontrol /dev/usb/hiddev0 -- +10
    
may return:
 
    Apple Cinema and Studio Display Control Program. Please, use --about switch to learn more
    hiddev driver version is 1.0.4
    /dev/usb/hiddev0: BRIGHTNESS=143
