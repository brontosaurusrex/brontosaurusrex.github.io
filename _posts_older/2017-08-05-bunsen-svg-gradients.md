---
published: true
layout: post
date: '2017-08-05 00:08 +0200'
title: bunsen svg gradients
tags: mine linux
---
![bunsenC.svg]({{site.baseurl}}/media/bunsenC.svg)
[bunsenA.svg]({{site.baseurl}}/media/bunsenA.svg)  
[bunsenC.svg]({{site.baseurl}}/media/bunsenC.svg)  
[bunsenD.svg]({{site.baseurl}}/media/bunsenD.svg)  

^ All have slightly ferlaufish background and slight grain layer on top (They look wrong in browsers, but they should open in inkscape or nitrogen just fine).

While D is nice, there is some [banding](https://answers.launchpad.net/inkscape/+question/462888), an attempt to fix that (very small gradient from TL)  
[bunsenD4TL.svg]({{site.baseurl}}/media/bunsenD4TL.svg)  
[bunsenD5TL.svg]({{site.baseurl}}/media/bunsenD5TL.svg)

One more for revolucion (no gradients, red logo)  
![bunsenE3.svg]({{site.baseurl}}/media/bunsenE3.svg)

[Some bitmaps](https://forums.bunsenlabs.org/viewtopic.php?pid=57757#p57757).

And an attempt to fight 'unsolvable' banding problem with more grain  
[bunsenF.svg]({{site.baseurl}}/media/bunsenF.svg)

License: All credits for original logo to [ututo](https://forums.bunsenlabs.org/profile.php?id=67).

## getting some interesting Pixelization

image magick needed

    convert -density 10 -scale 1920x1200 bunsenE3.svg bunsenE3_10px.png
    # scale seems to be fast version of -resize
