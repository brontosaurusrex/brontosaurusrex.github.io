---
published: true
layout: post
date: '2017-05-24 23:53 +0200'
title: Debian Stretch on 2009 MacPro
---
## Problemos:

- openbox exit will switch to black (started with startx and nvidia-legacy drivers are active)
- function keys not working (edit: fn + fkey is working) 

    # Edit or create the file /etc/modprobe.d/hid_apple.conf, e.g.:
    gksudo gedit /etc/modprobe.d/hid_apple.conf
    # Add this line to the previously open file.
    options hid_apple fnmode=2
    # Save the file and execute the following command to notify hid_apple module to reload it's configuration.
    sudo update-initramfs -u
    # Reboot
    
[https://help.ubuntu.com/community/AppleKeyboard](https://help.ubuntu.com/community/AppleKeyboard)

- FIXED (itself) shutdown will blank and not actually shutdown (systemctl poweroff)
- conky is invisible
- FIXED (by reinstalling rEFInd) system will go directly to grub at boot time (rEFInd screen expected)
- propelers are too loud

[![macproMetal.th.png](https://cdn.scrot.moe/images/2017/05/25/macproMetal.th.png)](https://cdn.scrot.moe/images/2017/05/25/macproMetal.png)
