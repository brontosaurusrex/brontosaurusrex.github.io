---
published: true
layout: post
date: '2019-10-09 10:10'
title: Magic of sudo dd
tags: linux 
---
To get some idea what is the name of the usb key just inserted

    sudo dmesg
    
may return

    [87013.448154] usb-storage 2-1.6:1.0: USB Mass Storage device detected
    [87015.343335] sd 4:0:0:0: [sdb] 15163392 512-byte logical blocks: (7.76 GB/7.23 GiB)
    [87015.344488] sd 4:0:0:0: [sdb] Write Protect is off
    [87015.344493] sd 4:0:0:0: [sdb] Mode Sense: 23 00 00 00

then 

    sudo dd if=some.iso of=/dev/sdb status="progress" bs=4M
    
