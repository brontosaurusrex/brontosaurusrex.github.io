---
published: true
layout: post
date: '2019-08-12 21:44'
title: Halftone, Imagemagick
tags: 
---
[https://www.imagemagick.org/discourse-server/viewtopic.php?t=35494](https://www.imagemagick.org/discourse-server/viewtopic.php?t=35494)

    #!/bin/bash
    
    # halftone

    set -e

    convert "$1" -level 0x70% \
    -set option:distort:viewport '%wx%h+0+0' \
    -colorspace CMYK -separate null: \
    \( -size 2x2 xc: \( +clone -negate \) \
    +append \( +clone -negate \) -append \) \
    -virtual-pixel tile -filter gaussian \
    \( +clone -distort SRT 60 \) +swap \
    \( +clone -distort SRT 30 \) +swap \
    \( +clone -distort SRT 45 \) +swap \
    \( +clone -distort SRT 0 \)  +swap +delete \
    -compose Overlay -layers composite \
    -set colorspace CMYK -combine -colorspace RGB \
    out_cmyk_halftone.png

Strong effect, kills alpha in this version (fixme).
