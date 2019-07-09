---
published: true
layout: post
date: '2019-07-09 01:58'
title: Buster and legacy Nvidia problem
tags: linux 
---
### problems

- glxinfo exists with error  
- mpv errors with 'no glx context'  
- tearing on playback with mpv, tearing all over the place (browser)

### solution

Replace in /etc/X11/xorg.conf, from

    Section "Files"
    EndSection
    
to

    Section "Files"
        ModulePath     "/usr/lib/xorg/modules/linux"
        ModulePath     "/usr/lib/xorg/modules"
    EndSection

