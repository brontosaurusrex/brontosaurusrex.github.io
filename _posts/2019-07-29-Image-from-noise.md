---
published: true
layout: post
date: '2019-07-29 20:17'
title: Image from noise
tags: mine 
---
Source noise   
![noise.png](https://cdn.scrot.moe/images/2019/07/29/noise.png)

    convert noise.png -virtual-pixel tile \
    -emboss 100x10 -negate -blur 1x1 -sharpen 0x1 -sharpen 0x3 \
    +level 20%,50% embos.jpg
     
![embos.jpg](https://cdn.scrot.moe/images/2019/07/29/embos.jpg)

    convert noise.png -virtual-pixel tile \
    -colorspace gray -auto-level -blur 0x30 \
    -emboss 0x10 -auto-level -edge 1 \
    +level 20%,50% embosblur0x10edge.jpg
    
![embosblur0x10edge.jpg](https://cdn.scrot.moe/images/2019/07/29/embosblur0x10edge.jpg)

    convert noise.png -auto-level -morphology OpenI Disk:55 \
    -colorspace gray -auto-level +level 10%,50% morph.jpg

![morph.jpg](https://cdn.scrot.moe/images/2019/07/29/morph.jpg)

    convert noise.png -virtual-pixel tile \
    -auto-level -statistic Mode 120 \
    -colorspace gray -auto-level +level 10%,50% stats.jpg

![stats.jpg](https://cdn.scrot.moe/images/2019/07/29/stats.jpg)

    # 2nd gen
    convert embosblur0x10edge.jpg -virtual-pixel tile \
    -statistic Mode 10 -colorspace gray -blur 0x10 \
    -edge 10 -sharpen 0x10 -auto-level +level 10%,50% statsmorph.jpg
     
![statsmorph.jpg](https://cdn.scrot.moe/images/2019/07/29/statsmorph.jpg)

^ They mostly tile, mostly.
