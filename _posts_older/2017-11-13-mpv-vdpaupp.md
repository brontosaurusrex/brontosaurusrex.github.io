---
published: true
layout: post
date: '2017-11-13 19:48 +0100'
title: mpv vdpaupp
tags: video
---
Deinterlace with nvidia

	mpv --vf=vdpaupp=deint-mode=temporal-spatial

Denoise, deinterlace, sharpen with nvidia

	mpv --vf=vdpaupp=denoise=0.3:deint-mode=temporal-spatial:sharpen=0.5
    
^ With my old card

    Card: NVIDIA G96 [GeForce 9500 GT]
    Display Server: X.Org 1.19.2 driver: nvidia Resolution: 1920x1080@60.00hz, 1920x1200@59.95hz
    GLX Renderer: GeForce GT 120/PCIe/SSE2 GLX Version: 3.3.0 NVIDIA 340.102
    
this works when it feels like.

Software version (cpu killer) does work as it seems

    mpv --vf=lavfi=[yadif=1]
