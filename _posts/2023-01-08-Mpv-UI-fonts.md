---
published: true
layout: post
date: '2023-01-08 14:09'
title: Mpv UI fonts
tags: video 
---
Slightly more readable UI font (windows), in mpv.conf

    osd-font="Roboto"
    osd-font-size=28
    #osd-bold=yes

Note that the fonts can be provided from subfodler 'fonts' next to mpv.exe (windows)

    ├── mpv.exe
    └── fonts
        └── Roboto-Regular.ttf

which should make entire config portable.  
edit:  

or 

    osd-font="Roboto Condensed"

