---
published: true
layout: post
date: '2019-10-18 14:31'
title: pipeScreenfetch and pipeNeofetch
tags: linux 
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=92381#p92381](https://forums.bunsenlabs.org/viewtopic.php?pid=92381#p92381)  
[https://forums.bunsenlabs.org/viewtopic.php?pid=92446](https://forums.bunsenlabs.org/viewtopic.php?pid=92446)

## screenfetch

    ticho@i5
    OS: Debian 10 buster
    Kernel: x86_64 Linux 4.19.0-6-amd64
    Uptime: 1d 4h 22m
    Packages: 4878
    Shell: zsh 5.7.1
    Resolution: 1920x1200
    WM: OpenBox
    WM Theme: ArchLabs-dARK-Alt-brex
    GTK Theme: dARK-Arc [GTK2/3]
    Icon Theme: Luv-dark
    Font: Cuprum 11
    CPU: Intel Core i5 650 @ 4x 3.333GHz
    GPU: Mesa DRI Intel(R) Ironlake Desktop 
    RAM: 1512MiB / 3747MiB
    
[pipeScreenfetch](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/bin/pipeScreenfetch).

[![scrot31573.md.png](https://cdn.scrot.moe/images/2019/10/18/scrot31573.md.png)](https://scrot.moe/image/xNuZz)

Variables may be omited from display, like so

    screenfetch -nN -d "-host;-shell"
    
[Valid vars](https://github.com/KittyKatt/screenFetch/blob/master/screenfetch-dev#L44) seem to be

		'distro'
		'host'
		'kernel'
		'uptime'
		'pkgs'
		'shell'
		'res'
		'de'
		'wm'
		'wmtheme'
		'gtk'
		'disk'
		'cpu'
		'gpu'
		'mem'

## neofetch

[pipeNeofetch](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/bin/pipeNeofetch).

Seems to give better info overall.

[![scrot17819.md.png](https://cdn.scrot.moe/images/2019/10/19/scrot17819.md.png)](https://scrot.moe/image/xTK3Z)
