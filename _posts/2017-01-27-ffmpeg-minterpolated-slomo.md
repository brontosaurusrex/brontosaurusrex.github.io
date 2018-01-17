---
published: true
layout: post
date: '2017-01-27 13:54 +0100'
title: ffmpeg minterpolated slomo
tags: cli video
---
[https://ffmpeg.org/ffmpeg-filters.html#minterpolate](https://ffmpeg.org/ffmpeg-filters.html#minterpolate)

> minterpolate  
> Convert the video to specified frame rate using motion interpolation.

Example, assuming input and output are 25 fps

    ffmpeg -i in.mov -vf minterpolate=fps=50 -c:v prores -r 25 out.mov # < that didn't work
    
    ffmpeg -i in.mov -t 1 -vf minterpolate=fps=150 -f nut -c:v rawvideo - | ffmpeg -r 25 -i - -c:v prores out.mov # this is very ugly, but working (25fps > 25fps)
