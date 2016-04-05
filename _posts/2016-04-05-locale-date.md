---
published: true
layout: post
date: "2016-04-05 14:40 +0200"
title: locale date (Ubuntu server 14.04 trusty)
---


    sudo apt-get install language-pack-xy ?
    sudo locale-gen xy_XY.UTF-8
    sudo dpkg-reconfigure locales
    
logout/login ?

And

	LC_TIME=sl_SI.UTF-8 date
	
still not working (same behaviour on Debian Jessie), but

    LC_ALL=sl_SI.UTF-8 date
    
is.

In scripts, this appears to work (just put it before any date call)

    export LC_ALL=sl_SI.UTF-8
    
p.s. On OSX and Arch Linux "LC_TIME=sl_SI.UTF-8 date" is working just fine. For Arch I followed first two steps [explained here](https://wiki.archlinux.org/index.php/locale) (enable locale in /etc/locale.gen and run locale-gen).
