---
published: true
layout: post
date: '2016-07-07 15:02 +0200'
title: avisynth and cineform ...
---
It will take a while before one realizes what dlls go where, but after some painfull minutes/hours a script like this might actually open cineform mov in virtualdub

    #LoadPlugin("t:\path\LSMASHSource.dll")
    a=LSMASHVideoSource("cineform.mov", format = "YUV420P8")
    b=LSMASHAudioSource("cineform.mov")
    audiodub(a,b)
    
Using 420, since this might get transcoded into h.264.

lsmash works  
[http://forum.doom9.org/showthread.php?t=167435](http://forum.doom9.org/showthread.php?t=167435)

p.s. Other options are (from lsmash README)

    "YUV420P8"
    "YUV422P8"
    "YUV444P8"
    "YUV410P8"
    "YUV411P8"
    "YUV420P9"
    "YUV422P9"
    "YUV444P9"
    "YUV420P10"
    "YUV422P10"
    "YUV444P10"
    "YUV420P12" (ffmpeg only)
    "YUV422P12" (ffmpeg only)
    "YUV444P12" (ffmpeg only)
    "YUV420P14" (ffmpeg only)
    "YUV422P14" (ffmpeg only)
    "YUV444P14" (ffmpeg only)
    "YUV420P16"
    "YUV422P16"
    "YUV444P16"
    "YUY2"
    "Y8"
    "RGB24"
    "RGB32"
    
p.s.2. For just opening such videos in vdub, this vdub mod will work:
[https://sourceforge.net/projects/vdfiltermod/](https://sourceforge.net/projects/vdfiltermod/)
