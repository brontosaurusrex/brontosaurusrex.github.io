---
published: true
layout: post
date: '2019-02-03 21:01 +0100'
title: 'Old Nvidia, No compton, No tearing'
tags:
  - linux
  - video
  - nvidia
---
    inxi -G
    Graphics:  Card: NVIDIA G96 [GeForce 9500 GT]
           Display Server: X.Org 1.19.2 driver: nvidia Resolution: 1920x1080@60.00hz, 1920x1200@59.95hz
           GLX Renderer: GeForce GT 120/PCIe/SSE2 GLX Version: 3.3.0 NVIDIA 340.106
           
This is dual-monitor setup, in `/etc/X11/xorg.conf` add `{ ForceFullCompositionPipeline = On }`

    Option         "metamodes" "DVI-I-1: nvidia-auto-select +1920+60 { ForceFullCompositionPipeline = On }, DP-1: nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"

to proper place. In `.config/openbox/autostart` disable compton. Log in and out.
