---
published: true
layout: post
date: '2017-01-17 17:55 +0100'
title: ffmpeg extract multiple audio tracks
---
    ffmpeg -i input.mxf -map 0:a:0 -c copy ~/output/a1.wav -map 0:a:1 -c copy ~/output/a2.wav -map 0:a:2 -c copy ~/output/a3.wav -map 0:a:3 -c copy ~/output/a4.wav
    
will take first 4 audio tracks in that mxf and save them as some sort of wav files.

