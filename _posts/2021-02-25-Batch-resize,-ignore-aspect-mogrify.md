---
published: true
layout: post
date: '2021-02-25 12:03'
title: Batch resize, ignore aspect mogrify
tags: video mine 
---
This

    mogrify -resize 1920x1080! *.png

will corectly upscale 1440x1080 images, disregarding aspect as needed (Note the little !), damn.   
p.s. Mogrify rewrites originals, so have backup.
