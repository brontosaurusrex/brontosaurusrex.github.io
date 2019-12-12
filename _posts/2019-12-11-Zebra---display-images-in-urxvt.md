---
published: true
layout: post
date: '2019-12-11 23:43'
title: Zebra - display images in urxvt
tags: mine bash 
---
[![zebra2.png-8thNCUAoUMCIjq4-md](https://images.weserv.nl/?url=https://i.imgur.com/ZlsQg6hl.png)](https://images.weserv.nl/?url=https://i.imgur.com/ZlsQg6h.png)
[![zebra.png-jusqyA0HtN2GYXj-md](https://images.weserv.nl/?url=https://i.imgur.com/pBen3tDl.jpg)](https://images.weserv.nl/?url=https://i.imgur.com/pBen3tD.jpg)

[Zebra script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/zebra).

Needs: 'w3m-img' (w3mimgdisplay) and supported terminal like xterm or urxvt. And probably more.

Zebra is based around the code found [here](https://blog.z3bra.org/2014/01/images-in-terminal.html).

Notes:

    FONTH=24 # 14 Size of one terminal row
    FONTW=12  # 8 Size of one terminal column

todo:

- add rename image (should also rename array member?).
- w should cycle wallpaper setter modes (--set-centered --set-scaled --set-tiled --set-zoom --set-zoom-fill).
