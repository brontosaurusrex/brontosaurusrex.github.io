---
published: true
layout: post
date: '2022-01-11 09:22'
title: WSL1 use/mount network share
tags: misc 
---
    $ sudo mkdir /mnt/share
    $ sudo mount -t drvfs '\\server\share' /mnt/share
    
[superuser source](https://superuser.com/questions/1128634/how-to-access-mounted-network-drive-on-windows-linux-subsystem).
