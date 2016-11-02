---
published: true
layout: post
date: '2016-07-22 14:20 +0200'
title: 'Debian, backported kernels'
---
[https://forums.bunsenlabs.org/viewtopic.php?id=1257](https://forums.bunsenlabs.org/viewtopic.php?id=1257)

    sudo apt-get install -t jessie-backports linux-image-amd64 linux-headers-amd64 linux-base
    
Note: This are so called meta-packages, so stuff should update automagically from there on.  
When: Probably mostly if there is a hardware problem with older kernels.
