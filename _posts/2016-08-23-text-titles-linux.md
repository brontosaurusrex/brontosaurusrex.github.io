---
published: true
layout: post
date: '2016-08-23 23:17 +0200'
title: text titles & linux
---
1. Do a lyx/tex template ... (In correct proportions, not sure if pixels are a valid unit at all), also kerning is poor in anything non-english (using non-latex fonts, test with "GLAVNA" for example)
1. export as pdf
1. convert +antialias -density 1200 that.pdf that.png # +antialias = disable antialias, and density 1200 should produce a huge file
1. gimp that.png (or use convert again) with some blur + downsize to wanted size

Tex template should have better command line handling value + I can [ignore inkscape](https://github.com/brontosaurusrex/titles) then.

Example (but this was not blured, neither density was set high)  
[![newfile2downsized_fill.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2016/08/23/newfile2downsized_fill.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2016/08/23/newfile2downsized_fill.png)
