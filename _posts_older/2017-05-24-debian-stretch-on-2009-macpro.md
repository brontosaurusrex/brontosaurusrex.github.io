---
published: true
layout: post
date: '2017-05-24 23:53 +0200'
title: Debian Stretch on 2009 MacPro
tags: linux mine
---
## Problemos:

a. openbox exit will switch to black (started with startx and nvidia-legacy drivers are active)  
Lots of problems seems to go away with [removing nvidia drivers](/2017/06/08/getting-rid-of-nvidia-debian-stretch/).  
b. FIXED? function keys not working (edit: fn + fkey is working)  

    # Edit or create the file /etc/modprobe.d/hid_apple.conf, e.g.:
    gksudo gedit /etc/modprobe.d/hid_apple.conf
    # Add this line to the previously open file.
    options hid_apple fnmode=2
    # Save the file and execute the following command to notify hid_apple module to reload it's configuration.
    sudo update-initramfs -u
    # Reboot
    
[https://help.ubuntu.com/community/AppleKeyboard](https://help.ubuntu.com/community/AppleKeyboard)

c. half FIXED (itself) shutdown will blank and not actually shutdown (systemctl poweroff), restart still not working.  
d. conky is invisible  
e. FIXED (by reinstalling rEFInd) system will go directly to grub at boot time (rEFInd screen expected)  
f. FIXED? propelers are too loud (xfce4-power-manager and disable all but last xset line in autostart)

[![macproMetal.th.png](//cdn.scrot.moe/images/2017/05/25/macproMetal.th.png)](//cdn.scrot.moe/images/2017/05/25/macproMetal.png)
