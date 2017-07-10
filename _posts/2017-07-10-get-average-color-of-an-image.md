---
published: true
layout: post
date: '2017-07-10 12:45 +0200'
title: Get average color of an image
---
[http://matkl.github.io/average-color/](http://matkl.github.io/average-color/)  
[http://stuf.ro/finding-the-average-color-of-an-image](http://stuf.ro/finding-the-average-color-of-an-image)

Actuall this seems to be working

    convert senn.jpg -resize 1x1 -format '%[fx:int(255*r)],%[fx:int(255*g)],%[fx:int(255*b)]' info:-
    65,103,194
    
Gpick *tools/pallete from image* generates similar results (colors=1)

![averageColor-fs8.png]({{site.baseurl}}/media/averageColor-fs8.png)
