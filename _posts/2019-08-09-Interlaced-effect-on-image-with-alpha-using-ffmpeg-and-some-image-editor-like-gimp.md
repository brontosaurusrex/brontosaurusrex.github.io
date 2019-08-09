---
published: true
layout: post
date: '2019-08-09 22:05'
title: Interlaced effect on image with alpha using ffmpeg and some image editor like gimp
tags: video mine 
---
In Gimp save first frame as bronto_001.png, reposition the logo and save as bronto_002.png.

Then, using ffmpeg

    ffmpeg -i bronto_%03d.png -filter:v interlace bronto_interlaced.png
    
or, sharper

    ffmpeg -i bronto_%03d.png -filter:v interlace=scan=1:lowpass=2 bronto_interlaced2.png
    
and with scale

    ffmpeg -i bronto_%03d.png -filter:v scale=900:-1,interlace=scan=1:lowpass=2 bronto_interlaced_logo.png

Voila.

<a href="/public/bronto_interlaced2.png"><img src="/public/bronto_interlaced2.png" style="object-position: 0 0; object-fit: none; width:1313px; height:568px;"></a>

p.s. [Css](https://css-tricks.com/almanac/properties/o/object-position/) to embed this 1:1 ^

    style="object-position: 0 0; object-fit: none; width:1313px; height:568px;"
    
p.s.2. The not-working-as-expected [imagemagick way to interlace.](https://stackoverflow.com/questions/36355337/how-can-i-interlace-two-images-using-imagemagick)

### Wallpaper
[![brontointer-back.md.png](https://cdn.scrot.moe/images/2019/08/09/brontointer-back.md.png)](https://scrot.moe/image/xzTiU)
