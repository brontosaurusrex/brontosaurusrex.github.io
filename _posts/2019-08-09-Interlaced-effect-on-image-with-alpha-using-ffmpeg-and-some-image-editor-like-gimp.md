---
published: true
layout: post
date: '2019-08-09 22:05'
title: Interlaced effect on image with alpha using ffmpeg and some image editor like gimp
tags: video mine 
---
In Gimp save first frame as bronto_001.png, reposition the logo and save as bronto_002.png.

Then, using ffmpeg

    ffmpeg -i bronto_%03d.png -filter:v interlace bronto_interlaced.png

Voila.

<a href="/public/bronto_interlaced.png"><img src="/public/bronto_interlaced.png" style="object-position: 0 0; object-fit: none; width:1313px; height:568px;"></a>
