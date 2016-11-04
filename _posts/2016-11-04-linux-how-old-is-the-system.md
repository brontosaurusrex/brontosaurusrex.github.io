---
published: true
layout: post
date: '2016-11-04 11:06 +0100'
title: 'Linux, how old is the system'
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764](https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764)

    sudo tune2fs -l /dev/sda5 | grep 'created'
    
Which sda would be actual (The one mounted as '/') can be figured out with

    lsblk -l | grep '/'
