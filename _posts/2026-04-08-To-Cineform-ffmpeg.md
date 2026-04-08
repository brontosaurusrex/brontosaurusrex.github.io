---
published: true
layout: post
date: '2026-04-08 10:32'
title: To Cineform ffmpeg
tags: video 
---
Progressive

    ffmpeg -i input.mov -c:v cfhd -pix_fmt yuv422p10le -quality medium output.mov

Interlaced?

    ffmpeg -i input_interlaced.mov -flags +ildct -top 1 -c:v cfhd -pix_fmt yuv422p10le -quality medium output_interlaced.mov


Acording to deepseek quality levels are

    Quality Setting   Numeric Value   Typical Use Case
    film3+            0               Highest quality. Archival, VFX, color grading
    film3             1               
    film2+            2               
    film2             3               
    film1.5           4               
    film1+            5               
    film1             6               Visually lossless for most content
    high+             7               
    high              8               4K/UHD mastering
    medium+           9               
    medium            10              HD mastering
    low+              11              
    low               12              Smallest files. Proxies, dailies
