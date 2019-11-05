---
published: true
layout: post
date: '2019-10-28 21:37'
title: ~/.cache
tags: linux 
---
> freedesktop.org was formerly known as the X Desktop Group, and the acronym "XDG", remains common in their work.

[https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)

> If $XDG_CACHE_HOME is either not set or empty, a default equal to $HOME/.cache should be used.

[https://wiki.archlinux.org/index.php/XDG_Base_Directory#Specification](https://wiki.archlinux.org/index.php/XDG_Base_Directory#Specification)

    cd .cache
    duh2 | tail

    53M	./jhbuild
    91M	./supertuxkart
    140M	./godot
    142M	./winetricks
    262M	./RawTherapee
    403M	./thumbnails
    526M	./mozilla
    823M	./google-chrome
    2.6G	.
    2.6G	total
    
Everything in enviroment considering XDG (Debian Buster Openbox)

    printenv | grep XDG
    
    XDG_SEAT=seat0
    XDG_SESSION_TYPE=x11
    XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
    XDG_SESSION_CLASS=user
    XDG_SESSION_ID=1
    XDG_SESSION_PATH=/org/freedesktop/DisplayManager/Session0
    XDG_RUNTIME_DIR=/run/user/1000
    XDG_SESSION_DESKTOP=openbox
    XDG_GREETER_DATA_DIR=/var/lib/lightdm/data/b
    XDG_VTNR=7
    XDG_DATA_DIRS=/home/b/.local/share ...
