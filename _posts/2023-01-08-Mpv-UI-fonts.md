---
published: true
layout: post
date: '2023-01-08 14:09'
title: Mpv UI and subtitle fonts
tags: video 
---
Slightly more readable UI font (windows), in mpv.conf

    osd-font="Roboto Condensed"
    osd-font-size=28

Note that the fonts can be provided from subfodler 'fonts' next to mpv.exe (windows)

    ├── mpv.exe
    └── fonts
        └── RobotoCondensed-Regular.ttf

Subtitle font is also configurable

    # subs
    sub-font-size=45
    sub-font="Roboto Condensed"
    sub-border-size=1.5


