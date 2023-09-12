---
published: true
layout: post
date: "2016-05-31 21:53 +0200"
title: urxvt with an icon in arch
---
You will want this aur  
[https://aur.archlinux.org/packages/rxvt-unicode-pixbuf/](https://aur.archlinux.org/packages/rxvt-unicode-pixbuf/)

and a line like

    ! urxvt icon - https://aur.archlinux.org/packages/rxvt-unicode-pixbuf/
    URxvt.iconFile:    /home/ticho/.icons/papirus/32x32/apps/xterm-color.svg
    
in .Xresources.
