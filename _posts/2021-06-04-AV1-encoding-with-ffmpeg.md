---
published: true
layout: post
date: '2021-06-04 18:30'
title: AV1 encoding with ffmpeg
tags: video 
---
Using a [static build](https://johnvansickle.com/ffmpeg/) of ffmpeg, OS=Debian, running in wsl1.

    ffmpegStatic -i input.mov -c:v libaom-av1 -cpu-used 8 -row-mt true -threads 0 -crf 24 -tile-columns 1 -tile-rows 0 out.mp4

Encodes @ 2.7 fps. Cpu-used 8 is the fastest encoding speed. 

_Cons_  
- The out.mp4 looks very artifical, no noise retained. 
- Jerky playback in chrome, according to chrome://media-internals/, player used is kPlay.
- Extremly slow encoding speed, even with the fastest setting.

_Pros_  
- No aparent banding visible, possibly due to input being 10bit. 
- Plays fine with mpv. 
- The promise of 10 bit playback in browser.

_Hardware used_ 

    Processor   Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz, 2592 Mhz, 
                6 Core(s), 12 Logical Processor(s)
    GPU         NVIDIA GeForce RTX 2060

