---
published: true
layout: post
date: '2018-05-09 12:52 +0200'
title: Median blending
---
[https://petapixel.com/2013/05/29/a-look-at-reducing-noise-in-photographs-using-median-blending/](https://petapixel.com/2013/05/29/a-look-at-reducing-noise-in-photographs-using-median-blending/)

Imagemagicks

	convert OUT_PREFIX* -evaluate-sequence median output.png
