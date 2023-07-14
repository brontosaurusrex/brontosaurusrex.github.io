---
published: true
layout: post
date: '2023-07-14 23:06'
title: Frames to prores, ffmpeg
tags: video mine luv 
---
Folder of pngs to prores mov:

    ffmpeg -f image2 -pattern_type glob -i "*.png" -c:v prores -pix_fmt yuv422p10le -an -r 25 noise.mov
