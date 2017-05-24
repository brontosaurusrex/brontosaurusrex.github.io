---
published: true
layout: post
date: '2017-05-24 23:53 +0200'
title: Debian Stretch on 2009 MacPro
---
## Problemos:

- openbox exit will switch to black (started with startx and nvidia-legacy drivers are active)
- function keys not working
- FIXED (itself) shutdown will blank and not actually shutdown (systemctl poweroff)
- conky is invisible
- FIXED (by reinstalling rEFInd) system will go directly to grub at boot time (rEFInd screen expected)
