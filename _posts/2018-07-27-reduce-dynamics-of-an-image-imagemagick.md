---
published: true
layout: post
date: '2018-07-27 19:43 +0200'
title: Reduce dynamics of an image (imagemagick)
tags:
  - cli
  - misc
---
[https://www.imagemagick.org/script/command-line-options.php#level-colors](https://www.imagemagick.org/script/command-line-options.php#level-colors)

    convert in.png +level-colors "rgb(20,20,20)","rgb(200,200,200)" out.png
    
Seems to work with alpha channel as well.

Before && After  
![barsBefore.png]({{site.baseurl}}/media/barsBefore.png)
![barsAfter.png]({{site.baseurl}}/media/barsAfter.png)
