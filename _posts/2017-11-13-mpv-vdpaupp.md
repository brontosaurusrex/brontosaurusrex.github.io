---
published: true
layout: post
date: '2017-11-13 19:48 +0100'
title: mpv vdpaupp
---
Deinterlace with nvidia

	mpv --vf=vdpaupp=deint-mode=temporal-spatial

Denoise, deinterlace, sharpen with nvidia

	mpv --vf=vdpaupp=denoise=0.3:deint-mode=temporal-spatial:sharpen=0.1
    
