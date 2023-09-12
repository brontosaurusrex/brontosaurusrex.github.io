---
published: true
layout: post
date: '2017-07-10 12:45 +0200'
title: Get average color of an image
tags: misc
---
[http://matkl.github.io/average-color/](http://matkl.github.io/average-color/)  
[http://stuf.ro/finding-the-average-color-of-an-image](http://stuf.ro/finding-the-average-color-of-an-image)

[This](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/bin/averageColorFromImage) seems to be working

    convert senn.jpg -resize 1x1 -format '%[fx:int(255*r)],%[fx:int(255*g)],%[fx:int(255*b)]' info:-
    65,103,194
    
[![scrot03116.th.png](//cdn.scrot.moe/images/2017/07/10/scrot03116.th.png)](//cdn.scrot.moe/images/2017/07/10/scrot03116.png)
    
Gpick *tools/pallete from image* generates similar results (colors=1)

[averageColor-fs8.png]({{site.baseurl}}/media/averageColor-fs8.png), [tint2 proposal](https://forums.bunsenlabs.org/viewtopic.php?pid=55631).
