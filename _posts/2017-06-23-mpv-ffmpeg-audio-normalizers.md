---
published: true
layout: post
date: '2017-06-23 08:31 +0200'
title: 'mpv, ffmpeg audio normalizers'
---
With mpv you will want lavfi filter

    alias mpvd='mpv --af=lavfi=[dynaudnorm=s=30]'
    
A new one called loudnorm

[https://ffmpeg.org/ffmpeg-all.html#loudnorm](https://ffmpeg.org/ffmpeg-all.html#loudnorm)
