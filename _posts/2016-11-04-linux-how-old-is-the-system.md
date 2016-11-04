---
published: true
layout: post
date: '2016-11-04 11:06 +0100'
title: 'Linux, how old is the system'
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764](https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764)

a. Date of partition

    sudo tune2fs -l /dev/sda5 | grep 'created'
    
Which sda would be actual (The one mounted as '/') can be figured out with

    lsblk -l | grep '/'
    
b. Date of /lost+found (better). p.s. Another option may be /mnt

    sudo stat /lost+found/ | grep Change | awk '{print $2}'
