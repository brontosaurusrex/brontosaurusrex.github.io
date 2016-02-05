---
published: true
layout: post
date: "2016-02-05 16:51 +0100"
title: ffmpeg fixing wrogly rotated videos
---


without transcoding:

    ffmpeg -i wrong.mp4 -c copy -metadata:s:v:0 rotate=0 right.mp4

Rotate is absolute value.

![](http://24.media.tumblr.com/tumblr_mdpef8q7sJ1r4zr2vo1_500.gif)
