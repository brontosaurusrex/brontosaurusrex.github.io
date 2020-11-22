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

[![scrot31573.png-GZXtLXrityww7BY-md](https://i.imgur.com/LUQK4ctl.jpg)](https://i.imgur.com/LUQK4ct.jpg)


Variables may be omited from display, like so

    screenfetch -nN -d "-host;-shell"
    
[Valid variables](https://github.com/KittyKatt/screenFetch/blob/master/screenfetch-dev#L44) (for -d)

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

[Valid variables](https://github.com/dylanaraps/neofetch/blob/master/neofetch) (for --disable)

     title
     underline

     "OS" distro
     "Host" model
     "Kernel" kernel
     "Uptime" uptime
     "Packages" packages
     "Shell" shell
     "Resolution" resolution
     "DE" de
     "WM" wm
     "WM Theme" wm_theme
     "Theme" theme
     "Icons" icons
     "Terminal" term
     "Terminal Font" term_font
     "CPU" cpu
     "GPU" gpu
     "Memory" memory
     
## inxi research

Give me titles for submenus?

    inxi -F -v 8 -c 0 -r | grep -v '^ '
    inxi -F -v 8 -c 0 -r | grep -v '^ ' |  awk '{ print $1 }'
    
Part by part defined by user

    -S # system
    -M # machine
    -C # cpu
    -G # graphics
    -A # audio
    -N # network
    -D # drives
    -P # partition
    -u # partitions with uuid
    -r # repos
    -s # sensors
    -I # info
    -t c # top cpu
    -t m # top memory
    

inxi hangs when run from shell script  
[https://github.com/smxi/inxi/issues/181](https://github.com/smxi/inxi/issues/181)
    
workaround ? 

    #!/bin/bash
    inxi -F -c 0 &
    wait
    
this works as well

    #!/bin/bash

    array=( -S -M -C )
    for i in "${array[@]}"
    do

        inxi "$i" -c 0 &
        wait

    done
    
Slightly faster, but random order

    #!/bin/bash

    array=( -S -M -C -G -A -N -D -P -s -I )
    for i in "${array[@]}"
    do

        (inxi "$i" -c 0 & wait) &

    done

    wait
    
[pipeInxi](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/bin/pipeInxi)  
Ugly and slow.

[![scrot06332.png-M9WLNJoNnXpj6SN-md](https://i.imgur.com/TqcSHH2l.jpg)](https://i.imgur.com/TqcSHH2.jpg)

## As Geany template

    cd ~/.config/geany/templates/files
    echo "{command:neofetch --off --stdout --disable title term model --memory_percent on}" > neofetch

