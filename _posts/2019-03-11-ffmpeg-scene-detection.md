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

Update: The [old way](https://github.com/brontosaurusrex/stretchbang/blob/master/.experiments/bin/scriptFFdropSceneDetection), abusing x264 debug info, unfortunately the results are in frames

    ffmpeg -i "$file" -vf scale=100:100 -sws_flags neighbor -an -pix_fmt yuv420p -f yuv4mpegpipe - 2>/dev/null | x264 - --demuxer y4m --bframes 0 --min-keyint 10 --scenecut 45 --preset superfast --crf 30 --threads 1 -v --output /dev/null 2>&1 | grep scene
