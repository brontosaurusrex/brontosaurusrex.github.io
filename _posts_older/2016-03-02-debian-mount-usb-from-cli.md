---
published: true
layout: post
date: "2016-03-02 09:27 +0100"
title: "Debian, mount usb from cli"
---

[http://askubuntu.com/questions/37767/how-to-access-a-usb-flash-drive-from-the-terminal-how-can-i-mount-a-flash-driv](http://askubuntu.com/questions/37767/how-to-access-a-usb-flash-drive-from-the-terminal-how-can-i-mount-a-flash-driv)  

>     sudo fdisk -l
> 
> You're looking for a partition that should look something like: /dev/sdb1. Remember what it's called.
> 
> Create a mount point
> 
> Create a new directory in /media so you can mount the drive onto the filesystem:
> 
>     sudo  mkdir /media/usb
> 
> Mount!
> 
>     sudo mount /dev/sdb1 /media/usb
> 
> When you're done, just fire off:
> 
>     sudo umount /media/usb
>  

p.s. If umount fails with "target is busy" then make sure you are NOT in tmux.
