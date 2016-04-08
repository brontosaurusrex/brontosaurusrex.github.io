---
layout: page
title: singularity
published: true
---



## What is

Transcoding Minimal Cli Debian Virtual Machine. Debian minimal iso installed in a server fashion, has ffmpeg, mediainfo ... (whatever the scripts will need), ssh server. User will connect to the machine via ssh exclusively. Version N may also have watch folder functionality.

## Why

ffdrop will be useless once main editing machines will be replaced with windows based ones. Scripting on windows is no fun.

## How

Executable scripts in user ~/bin, modules sources from ~/bin/modules. Username = user, pass = 12345 (not sure). Each script must also carry short explanation of itself, which is displayed if script is run without parameters.

### modules

For example: timer, hasAudio, audioToAAC, isItMXF, encodeWithX264crf, ebur128 ... < written in reusable fashion (probably just bash functions).

Example pseudo script without error catching (work in progress)

    # includes
    source hasAudio,isItMXF,...

    # config
    ebur128 = false
    crf = true
    crfvalue = 21
    vbrvalue = 2000 #bitrate

    # timer start
    timer start

    # audio
    hasAudio input && isItMXF && MXFaudio  # if then else is the easy way here

    if ebur128 = true 
    then
        ebur128 && audioToAAC
    else
    	audioToAAC
    fi

    # video
    if crf = true
    then
    	encodeWithX264crf $crfvalue input
    else
    	encodeWithX2642pass
    fi

    # muxing
    merge videoEncode and audioEncode to new mp4 or something

    # echo timer
    echo timer

    done


## Error handling

Must be better than in ffdrop.

## VM

Virtual machine is [connected with 2 points](https://forums.virtualbox.org/viewtopic.php?t=15868), under read-only ~/input there should be everything that the host is offering as input files and under ~/output is where the results go (and temporary files and encoding logs). IO speed (to and from host) is expected trouble here. How much ram, how many cores to assign to it are open questions.

Working example fstab entrie ([Arch](https://wiki.archlinux.org/index.php/VirtualBox#Automounting)):

    # virtual box shared folders, source is readonly, tmp is readwrite.
    source		/home/ticho/input	vboxsf	uid=1000,gid=100,ro,dmode=700,fmode=600,comment=systemd.automount	0 0
    tmp		/home/ticho/output	vboxsf	uid=1000,gid=100,rw,dmode=700,fmode=600,comment=systemd.automount	0 0

### development VM

Final VM must be only armed with what is needed, another graphical VM shall be used for development.

[![42.th.png](https://cdn.scrot.moe/images/2016/04/08/42.th.png)](https://cdn.scrot.moe/images/2016/04/08/42.png)

## git

Virtual machine is a single download, but encoding scripts and modules (subroutines) have their own git with some minimal readme that explains how to use them on "any" Linux.

## links

Advanced bash guide  
[http://www.tldp.org/LDP/abs/html/abs-guide.html](http://www.tldp.org/LDP/abs/html/abs-guide.html)
