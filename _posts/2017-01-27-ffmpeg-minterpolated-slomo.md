---
published: true
layout: post
date: '2017-01-27 13:54 +0100'
title: ffmpeg minterpolated slomo
---
[https://ffmpeg.org/ffmpeg-filters.html#minterpolate](https://ffmpeg.org/ffmpeg-filters.html#minterpolate)

> minterpolate  
> Convert the video to specified frame rate using motion interpolation.

Example, assuming input is 25 fps

    ffmpeg -i in.mov -vf minterpolate=fps=50 -c:v prores -r 25 out.mov # < that didn't work
