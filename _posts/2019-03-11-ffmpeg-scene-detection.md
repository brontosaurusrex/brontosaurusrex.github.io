---
published: true
layout: post
date: '2019-03-11 16:29'
title: ffmpeg scene detection
tags: video bash
---
    ffmpeg -i "$1" \
           -filter:v "select='gt(scene,0.4)',showinfo" \
           -f null \
           - 2>&1 | grep pts_time:[0-9.]* | grep [0-9.]*

More complex version (detection is the same), that shall produce a lil timeline/stats like

    /media/b/data/trailers/Captain.mkv timeline
    ||------------|----|-----|----|----|||||||||||||||----|-|--|--|-|-||||||||||||||---|----|--|-|-|-|||-|---|--|---|--|-|-|-|-|||||||||-|-|-||-----|-|-|--|-|-|-|--|-||||---|-||-|||-||-|-|-||||-|--|--||--||||
    average clip length: 1.06221 seconds
    103 clips, 1 min 56 s 641 ms

[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/sceneDetection](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/sceneDetection)

Note: ffmpeg scene detection filter fails prety much every time, needs replacement with something better.
