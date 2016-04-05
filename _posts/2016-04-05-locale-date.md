---
published: true
layout: post
date: "2016-04-05 14:40 +0200"
title: locale date
---

    sudo apt-get install language-pack-xy ?
    sudo locale-gen xy_XY.UTF-8
    sudo dpkg-reconfigure locales
    
logout/login ?

And

	LC_TIME=sl_SI.UTF-8 date
	
still not working, but

    LC_ALL=sl_SI.UTF-8 date
    
is.
