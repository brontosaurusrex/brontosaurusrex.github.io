---
published: true
layout: post
date: '2017-09-13 20:45 +0200'
title: 'duc, disk size to image'
tags: cli linux
---
    sudo apt install duc
    duc index ~/. && duc graph -o ~/size.png ~/source
    
Index home and dump visual of subfolder ~/source to home/size.png.

![size.png]({{site.baseurl}}/media/size.png)

Black and white

    convert ~/size.png -colorspace Gray ~/sizeBW.png
    
## Interactive

    # duc
    duc index . && duc gui .
    # gdmap
    gdmap -f .
