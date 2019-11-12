---
published: true
layout: post
date: '2019-11-12 21:54'
title: Xresources to Lxterminal colors
tags: bash mine 
---
Naive script to convert hex colors as seen in .Xresources to Lxterminal friendly format.

[https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/urxlx](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/urxlx)

Usage:

    urxlx ~/.Xresources > tmp.txt

Converts this

    ! special
    *.foreground:   #f8f8f2
    *.background:   #272822
    *.cursorColor:  #f8f8f2
    ! black
    *.color0:       #272822
    *.color8:       #75715e
    ! red
    *.color1:       #f92672
    *.color9:       #f92672
     
    ...
     
to this

    fgcolor=rgb(248,248,242)
    bgcolor=rgb(39,40,34)
    palette_color_0=rgb(39,40,34)
    palette_color_8=rgb(117,113,94)
    palette_color_1=rgb(249,38,114)
    palette_color_9=rgb(249,38,114)
    ...

then paste the results to strategic location in ~/.config/lxterminal/lxterminal.conf and win.
