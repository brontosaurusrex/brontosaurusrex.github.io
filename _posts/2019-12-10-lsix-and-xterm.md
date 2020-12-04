---
published: true
layout: post
date: '2019-12-10 22:56'
title: lsix and xterm
tags: linux 
---
In .Xresources

    ! XTERM
    xterm*faceName: FantasqueSansMono-Regular
    xterm*faceSize: 12
    
Start xterm with 

    xterm -ti vt340 -sh 6
    
vt340 seem to enable sixel support.

Get the [lsix script](https://github.com/hackerb9/lsix).

> Like "ls", but for images. Shows thumbnails in terminal using sixel graphics.

[![lsix.png-eaI1fWed0zQVBDi-md](https://images.weserv.nl/?url=https://i.imgur.com/a6kMShx.png)](https://images.weserv.nl/?url=https://i.imgur.com/a6kMShx.png)

Default urxvt can't and won't.

## Another way

would be using [w3m-img, w3mimgdisplay](https://blog.z3bra.org/2014/01/images-in-terminal.html).

## Cursor position

It is possible to [store and restore cursor position](https://www.ibm.com/developerworks/aix/library/au-learningtput/index.html).

    tput sc
    tput cup 23 45
    tput rc



