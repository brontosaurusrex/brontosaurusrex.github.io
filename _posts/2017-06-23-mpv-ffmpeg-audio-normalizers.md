---
published: true
layout: post
date: '2017-06-23 08:31 +0200'
title: 'mpv, ffmpeg audio normalizers'
---
## 1

With mpv you will want lavfi filter

    alias mpvd='mpv --af=lavfi=[dynaudnorm=s=30]'
    
A new one called [loudnorm](https://ffmpeg.org/ffmpeg-all.html#loudnorm).

## 2, better

In ~/config/mpv/input.conf add something like

    F1 cycle-values af "lavfi=[dynaudnorm=s=30]" "lavfi=[loudnorm]" ""
    
and on f1, mpv will cycle between filter1, filter2 and none. If you have current compile the syntax should be even shorter, like

    F1 cycle-values af "dynaudnorm=s=30" "loudnorm" ""
    # untested ^

