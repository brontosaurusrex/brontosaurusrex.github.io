---
published: true
layout: post
date: '2016-08-09 10:49 +0200'
title: Mandelbulber2 on Debian jessie
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=34563#p34563](https://forums.bunsenlabs.org/viewtopic.php?pid=34563#p34563)  
[https://software.opensuse.org/download.html?project=home%3Astevepusser%3Amandelbulber2_2.08.3&package=mandelbulber2](https://software.opensuse.org/download.html?project=home%3Astevepusser%3Amandelbulber2_2.08.3&package=mandelbulber2)  

[![mandel.th.png](https://www.scrot.moe/images/2016/08/09/mandel.th.png)](https://www.scrot.moe/image/lc60)

## Network rendering example (Both machines running Debian)

Main GUI machine is SERVER! (and not client)  
2nd headless machine is a CLIENT, command like  

    mandelbulber2 -n -q -H i5
    
should do it (i5 is a hostname of the SERVER machine)

[![mandelsheep.th.png](https://www.scrot.moe/images/2016/08/09/mandelsheep.th.png)](https://www.scrot.moe/images/2016/08/09/mandelsheep.png)

## Queue

Can be run on the same machine as 2nd instance, like

    ./mandelbulber2 -q -f png16 # optionaly put nice -19 in front

## Questions

1. Can queue use Network rendering? (To be continued)  
1. Any nice tricks to store/read mandelbulber setting into image (png and jpg) itself? (exiftool perhaps?)
    
## Renders 
[![delicate_v2_6880x2880_downscale_ps2.th.jpg](https://scrot.moe/images/2016/08/09/delicate_v2_6880x2880_downscale_ps2.th.jpg)](https://scrot.moe/image/ls7L)
[![delicate_v2_13760x5760_downscale_ps1.th.jpg](https://scrot.moe/images/2016/08/11/delicate_v2_13760x5760_downscale_ps1.th.jpg)](https://scrot.moe/image/7Mo6)
[![jezek_ps1.th.png](https://scrot.moe/images/2016/08/10/jezek_ps1.th.png)](https://scrot.moe/image/lti3)
[![delicate_v3_verybig.th.jpg](https://www.scrot.moe/images/2016/08/12/delicate_v3_verybig.th.jpg)](https://www.scrot.moe/image/74tW)
