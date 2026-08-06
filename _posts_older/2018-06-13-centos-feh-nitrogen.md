---
published: true
layout: post
date: '2018-06-13 12:45 +0200'
title: CentOS 7 / Resolve 15
tags:
  - linux
  - video
---
## CentOS feh/nitrogen?  
[https://jdhao.github.io/2017/05/06/install-feh-image-viewer-on-centos/](https://jdhao.github.io/2017/05/06/install-feh-image-viewer-on-centos/)

## Resolve 15 / CentOS 7  

[![Screenshot-from-2018-06-13-13-53-20.md.png-8BA6Ai96KH1hO9d-th](https://i.imgur.com/MnEkTsBb.png)](https://i.imgur.com/MnEkTsB.png)
[![Screenshot-from-2018-06-15-05-39-23.md.png-U1Vlsz8uYLyinfn-th](https://i.imgur.com/F15Beqfb.png)](https://i.imgur.com/F15Beqf.png)
[![Screenshot-from-2018-06-15-05-12-48.md.png-M8Z3ndH5Lv7m8z9-th](https://i.imgur.com/iQOLg3Ob.png)](https://i.imgur.com/iQOLg3O.png)
[![Screenshot-from-2018-06-14-13-48-33.md.png-6jTTct4VSlM392r-th](https://i.imgur.com/uGmEgqhb.png)](https://i.imgur.com/uGmEgqh.png)
[![Screenshot-from-2018-06-14-13-34-39.md.png-R4S2lN4KMxaeM17-th](https://i.imgur.com/5DgHSiWb.png)](https://i.imgur.com/5DgHSiW.png)
[![Screenshot-from-2018-06-15-05-43-55.md.png-YCQ1uLnQnnQ0DcP-th](https://i.imgur.com/BOsmXMsb.png)](https://i.imgur.com/BOsmXMs.png)

## Gpu utilization indicator in tint2

In tint2rc

    execp = new
    execp_centered = 1
    execp_has_icon = 0
    execp_command = gpu
    execp_continuous = 0
    execp_interval = 1
    execp_font = cuprum 12
    execp_font_color = #111111 70
    execp_padding = 0 0 0
    execp_tooltip = gpu

~/bin/gpu script

    nvidia-smi -q -d UTILIZATION | grep Gpu | grep -Eo "[0-9]{1,3}"
