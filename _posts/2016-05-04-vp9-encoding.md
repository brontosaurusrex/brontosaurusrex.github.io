---
published: true
layout: post
date: "2016-05-04 18:30 +0200"
title: vp9 encoding
---
[https://trac.ffmpeg.org/wiki/Encode/VP9](https://trac.ffmpeg.org/wiki/Encode/VP9)

Constant quality

    ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 10 -b:v 0 -c:a libvorbis output.webm
    
p.s. Yeah stick with Vorbis which seems to be decently supported on Android (Opus isn't).

[http://caniuse.com/#search=opus](http://caniuse.com/#search=opus)

p.s.2. Global all browsers included % support (full + partical)

    h.264       88.98%
    vp9         70.42%
    
Probably not even worth bothering with vp9 at this point.
