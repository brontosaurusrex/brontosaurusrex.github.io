---
published: true
layout: post
date: '2021-04-20 11:51'
title: FFMPEG store alpha to separated clip
tags: video 
---
    ffmpeg -i interlacedMovieWithAlpha.mov -vf alphaextract,format=yuv420p -flags +ildct+ilme alpha.mp4

Flags are generic way of telling it that it is interlaced...

Simplistic way to check for alpha (RGBA)

    mediainfo clipWithAlpha.mov | grep ': RGBA' && echo "has alpha"
