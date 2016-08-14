---
published: true
layout: post
date: '2016-08-12 18:15 +0200'
title: Arch LTS kernel
---
1. basicly just install pacman -S linux-lts
1. (optional) check if kernel, ramdisk and fallback are available in ls -lsha /boot
1. remove the standard kernel pacman -R linux
1. update the grub config grub-mkconfig -o /boot/grub/grub.cfg
1. reboot

from: [http://unix.stackexchange.com/questions/284617/how-to-switch-arch-linux-to-lts-kernel](http://unix.stackexchange.com/questions/284617/how-to-switch-arch-linux-to-lts-kernel)

(Mostly to remove the virtualbox/dkms related breakdowns)

[![archLTS.th.png](https://scrot.moe/images/2016/08/14/archLTS.th.png)](https://scrot.moe/images/2016/08/14/archLTS.png)
