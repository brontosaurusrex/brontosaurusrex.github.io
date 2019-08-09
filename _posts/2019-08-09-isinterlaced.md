---
published: true
layout: post
date: '2019-08-09 13:16'
title: isInterlaced
tags: video bash
---
[Idea from here.](http://www.aktau.be/2013/09/22/detecting-interlaced-video-with-ffmpeg/)

[isInterlaced script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/isInterlaced)

Usage on multiple files

    isInterlaced *.mxf                   
    interlaced.mxf
    tff 712, bff 0, progressive 0, undef 0
    ☰ interlaced
    progressive.mxf
    tff 0, bff 0, progressive 500, undef 0
    █ progressive

Single file and more logic could be done

    isInterlaced interlaced.mxf && echo yes
    interlaced.mxf
    tff 569, bff 0, progressive 56, undef 0
    ☰ interlaced
    yes
    
As is, this is an interesting info tool, but I wouldn't let it decide anything.

Perhaps [idet man](https://ffmpeg.org/ffmpeg-filters.html#idet), the part about *intl_thres* might be used for 2nd pass analysis to determine if there is significant difference between fields, to decide for yadif 0 (1 frame = 1 frame) or yadif 1 (1 field = 1 frame, output has double frame-rate).
