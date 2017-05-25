---
published: true
layout: post
date: '2016-03-17 03:31 +0100'
title: 'dd iso to usb, OSX'
---


[http://osxdaily.com/2015/06/05/copy-iso-to-usb-drive-mac-os-x-command/](http://osxdaily.com/2015/06/05/copy-iso-to-usb-drive-mac-os-x-command/)

## Short version

list drives

    diskutil list

Locate the usb and remember the name, like "disk5s1"

Unmount the usb

    sudo umount /dev/disk5s1

write the image

    # note the lil "r" in front of disk5s1
    sudo dd if=/path/image.iso of=/dev/rdisk5s1 bs=1m

There is no progress bar, so you will just have to have some faith and patience here.

eject (or just pull it out)

    diskutil eject /dev/disk5s1
    
edit: They say, they say that you should convert iso to img first

    hdiutil convert -format UDRW -o dest.img orig.iso
    # and then dd that to usb^
