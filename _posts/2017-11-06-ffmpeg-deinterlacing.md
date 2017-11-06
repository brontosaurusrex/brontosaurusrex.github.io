---
published: true
layout: post
date: '2017-11-06 17:10 +0100'
title: ffmpeg deinterlacing
---
yadif, bwdif, nnedi

[http://macilatthefront.blogspot.si/2017/04/deinterlacing-hd-footage-without-losing.html](http://macilatthefront.blogspot.si/2017/04/deinterlacing-hd-footage-without-losing.html)

	ffmpeg -i in.mov -vf "bwdif" -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -c:a aac -b:a 320k out.mp4
