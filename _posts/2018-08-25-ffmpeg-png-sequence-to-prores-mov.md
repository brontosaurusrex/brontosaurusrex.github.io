---
published: true
layout: post
date: '2018-08-25 14:03 +0200'
title: ffmpeg png sequence to prores mov
---
Assuming frames are named

    0001.png
    0002.png
    0003.png
    0004.png
    0005.png

then this should do the trick

	ffmpeg -i %04d.png -c:v prores -pix_fmt yuv422p -an -r 25 tetris9.mov
