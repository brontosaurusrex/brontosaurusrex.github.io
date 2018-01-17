---
published: true
layout: post
date: '2017-02-06 20:41 +0100'
title: Mount a VirtualBox drive image (vdi)?
tags: cli linux
---
[http://askubuntu.com/questions/19430/mount-a-virtualbox-drive-image-vdi](http://askubuntu.com/questions/19430/mount-a-virtualbox-drive-image-vdi)

    VBoxManage clonehd --format RAW ubuntu.vdi ubuntu.img

then

    mount -t ext4 -o loop,rw ./ubuntu.img /mnt
    
That didn't work.

p.s. This  
[https://bethesignal.org/blog/2011/01/05/how-to-mount-virtualbox-vdi-image/](https://bethesignal.org/blog/2011/01/05/how-to-mount-virtualbox-vdi-image/)

didn't work either.
