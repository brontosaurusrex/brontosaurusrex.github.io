---
published: true
layout: post
date: '2023-03-28 10:23'
title: 10bit x264 revisited
tags: video 
---
Still using x264? Me too. After revisiting my backup scripts, it turns out that Premiere Pro and also your favorite browser (Chrome) can both play '10bit422 x264 encoded' material. Chrome will play interlaced encodes as well, but have no clue on how to deinterlace.

Progressive example:

    -profile:v high422 -pix_fmt yuv422p10le -c:v libx264 -preset slow -tune film -crf 18 -threads 0 

Interlaced example:

    -profile:v high422 -pix_fmt yuv422p10le -c:v libx264 -flags +ildct+ilme -top 1 -preset slow -tune film -crf 18 -threads 0

or use encoder specific flags, like '-x264opts interlaced=1', there seems to be no difference with ffmpeg version

    version N-62475-g130d19bf20-static https://johnvansickle.com/ffmpeg/
