---
published: true
layout: post
date: '2018-08-14 17:17 +0200'
title: imagemagcc...icksck
tags:
  - cli
---
## Compose front and back over alpha image

https://www.imagemagick.org/script/compose.php

    convert ... -compose blend  -define compose:args=50,50 -composite ...

https://www.imagemagick.org/Usage/masking/#alpha

> The operator "-mask" takes an external image to be linked to the images in memory. The 'plus' form of the operator "+mask" removes the mask from the image.

    -read-mask filename
    
> This the same as using a mask used for composite masking operations, with grayscale values causing blended updates of the image the mask is attached to.

> Use +read-mask to remove the mask from images.

## Real world example

that actually works

    convert front.png back.png -mask alpha.png -composite out.png
    # or
    composite front.png back.png alpha.png out2.png
    
and as usually I had to guess that.

front, back, alpha, out  
[![front.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/08/14/front.th.png)](https://scrot.moe/image/9CqS8)
[![back.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/08/14/back.th.png)](https://scrot.moe/image/9Cs1W)
[![alpha.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/08/14/alpha.th.png)](https://scrot.moe/image/9CE72)
[![out.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2018/08/14/out.th.png)](https://scrot.moe/image/9CDjZ) 

## Fork

[http://www.graphicsmagick.org/](http://www.graphicsmagick.org/)

    gm composite front.png back.png alpha.png out3.png
