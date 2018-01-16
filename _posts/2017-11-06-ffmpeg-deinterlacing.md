---
published: true
layout: post
date: '2017-11-06 17:10 +0100'
title: ffmpeg deinterlacing
tags: video cli
---
yadif, bwdif, nnedi

[http://macilatthefront.blogspot.si/2017/04/deinterlacing-hd-footage-without-losing.html](http://macilatthefront.blogspot.si/2017/04/deinterlacing-hd-footage-without-losing.html)

### bwdif

	-vf bwdif=mode=0:parity=0
    # mode 0 frame to frame
    # parity 0 = tff
    
Most of the HD interlaced stuff if top-field-first.
