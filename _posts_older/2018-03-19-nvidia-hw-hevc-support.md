---
published: true
layout: post
date: '2018-03-19 23:54 +0100'
title: Nvidia hw HEVC support
tags:
  - linux
  - video
  - cli
  - nvidia
---
	apt install vdpauinfo
     # X must be running
    vdpauinfo | grep HEVC # or
    vdpauinfo --display :10 | grep HEVC
    
for 1060 GTX could return

    HEVC_MAIN                      153 262144  8192  8192
    HEVC_MAIN_10                   --- not supported ---
    HEVC_MAIN_STILL                --- not supported ---
    HEVC_MAIN_12                   --- not supported ---
    HEVC_MAIN_444                  --- not supported ---
    
which would mean no 10bit 4:2:2 HEVC I guess. edit: Or perhaps vdpau doesn't support 10bit.

edit2: About mpv: On linux (nvidia) one would generally want nvdec-copy and with intel/amd vaapi-copy (JEEB).
