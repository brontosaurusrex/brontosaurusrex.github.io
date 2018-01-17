---
published: true
layout: post
date: '2017-06-23 08:31 +0200'
title: 'mpv, ffmpeg audio normalizers'
tags: video audio
---
## Make some sort of alias

    alias mpvd='mpv --af=lavfi=[dynaudnorm=s=30]'
    alias mpvl='mpv --af=lavfi=[loudnorm]'
    
## Or better 
    
In ~/config/mpv/input.conf add something like

    F1 cycle-values af "lavfi=[dynaudnorm=s=30]" "lavfi=[loudnorm]" ""
    
and on f1, mpv will cycle between filter1, filter2 and none. If you have current compile the syntax should be even shorter, like

    F1 cycle-values af "dynaudnorm=s=30" "loudnorm" ""
    # untested ^
    
[Loudnorm sparse docs](https://ffmpeg.org/ffmpeg-filters.html#loudnorm).

## Scripts

According to #ffmpeg 2016, 2071 irc logs it's still faster to use old ebur128 filter for two pass calculus (loudnorm calculates more, so slower) if you want to use this prior to encoding, so my old [*singularity*](https://github.com/brontosaurusrex/singularity) scripts are fine.
