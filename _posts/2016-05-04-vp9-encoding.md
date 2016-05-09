---
published: true
layout: post
date: "2016-05-04 18:30 +0200"
title: vp9 encoding
---
[https://trac.ffmpeg.org/wiki/Encode/VP9](https://trac.ffmpeg.org/wiki/Encode/VP9)

Constant quality

    ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 10 -b:v 0 -c:a libvorbis output.webm
    
p.s.1. Actually audio could be opus unless there is some sort of browser compatibility mess.
p.s.2. Actually Android has really crappy opus support, stick at vorbis (and continue to ignore ie which might support opus in near future) 
