---
published: true
layout: post
date: '2021-06-05 19:00'
title: AV1 encoding with ffmpeg
tags: video 
---
## one

Using a [static build](https://johnvansickle.com/ffmpeg/) of ffmpeg, OS=Debian, running in wsl1.

    ffmpegStatic -i input.mov -c:v libaom-av1 -cpu-used 8 -row-mt true -threads 0 -crf 24 -tile-columns 1 -tile-rows 0 out.mp4

Encodes @ 2.7 fps. Cpu-used 8 is the fastest encoding speed. 

_Cons_  
- The out.mp4 looks very artificial, no noise retained. 
- Jerky playback in chrome, according to chrome://media-internals/, player used is kPlay.
- Extremely slow encoding speed, even with the fastest setting.

_Pros_  
- No apparent banding visible, possibly due to input being 10bit. 
- Plays fine with mpv. 
- Plays fine with firefox (not gpu accelerated).
- The promise of 10 bit playback in browser.

_Hardware used_ 

    Processor   Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz, 2592 Mhz, 
                6 Core(s), 12 Logical Processor(s)
    GPU         NVIDIA GeForce RTX 2060

## two, the noise, the grain?

Parameter

    -denoise-noise-level 50

gives bunch of errors

    aom_wiener_denoise_2d doesn't handle different chroma subsampling
    Unable to denoise image

> Grain synthesis is disabled if this option is not set or set to 0.
Range seems to be 1-50.

From [https://www.cambridge.org/...overview-of-coding-tools-in-av1.pdf](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/5972E00494363BE37E3439FAE382DB10/S2048770320000025a.pdf/div-class-title-an-overview-of-coding-tools-in-av1-the-first-video-codec-from-the-alliance-for-open-media-div.pdf)  
> Film grain synthesis
> the grain is removed from the content before compression, its parameters are estimated and sent in the AV1 bitstream. The decoder synthesizes the grain based on the received parameters and adds it to the reconstructed video

Forcing format to

    -pix_fmt yuv420p # or
    -pix_fmt yuv444p10le

seems to run the encode, but that is not the desired final format. The final encode looks visually great (all the grain and noise one would need).

