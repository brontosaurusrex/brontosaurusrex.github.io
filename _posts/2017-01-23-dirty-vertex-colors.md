---
published: true
layout: post
date: '2017-01-23 11:58 +0100'
title: Dirty vertex colors & planetarium experiment
tags: blender mine
---
Sort of ambient occlusion  
[https://www.blenderguru.com/tutorials/how-to-quickly-add-dirt-to-crevices/](https://www.blenderguru.com/tutorials/how-to-quickly-add-dirt-to-crevices/)

Landscape Ant addon  
[![planetarium.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium2.png)

[Material node](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/vertexAO.png).

3440x1440  
[![planetarium3_ps2.th.jpg](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium3_ps2.th.jpg)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium3_ps2.jpg)
[![planetarium4_ps5.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium4_ps5.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium4_ps5.png)
[![planetarium3_ps3.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium3_ps3.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium3_ps3.png)
[![planetarium5_ps1.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/24/planetarium5_ps1.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/24/planetarium5_ps1.png)

1920x1200  
[![planetarium4_ps5_1920x1200.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium4_ps5_1920x1200.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/23/planetarium4_ps5_1920x1200.png)

Rerender, more samples, lower DOF

1920x1200  
[![planetarium8_ps1_1920x1200.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_1920x1200.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_1920x1200.png)  
3840x1200 (dual monitor)  
[![planetarium8_ps1_3840x1200.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_3840x1200.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_3840x1200.png)  
3440x1440  
[![planetarium8_ps1_3440x1440.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_3440x1440.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/01/25/planetarium8_ps1_3440x1440.png)

Why is this not part of the shader nodes? This vertex map is kinda mesh-resolution dependant.

<s>Supposedly the use of geometry/pointiness with some color-ramp could be used.</s> < nope, tested.

AO baking is an option, results are slightly different. < tested

Workaround for lack of resolution might be to use this dirt as a driver for some procedural texture position or use subdivided mesh for that (to increase resolution) < to test.

There is also cavity mask in Texture paint.  
[https://www.blendernation.com/2015/02/25/cavity-mask-for-cycles-and-texture-paint/](https://www.blendernation.com/2015/02/25/cavity-mask-for-cycles-and-texture-paint/)

[https://wiki.blender.org/index.php/User:Gregzaal/AO_node_proposal](https://wiki.blender.org/index.php/User:Gregzaal/AO_node_proposal)

On general surface dirt nodes (extremly good results)  
[http://blender.stackexchange.com/questions/32494/how-to-make-dirty-looking-object](http://blender.stackexchange.com/questions/32494/how-to-make-dirty-looking-object)

And the render layer part (microdisplacement)  
[https://www.youtube.com/watch?v=hlh9rrjG29k](https://www.youtube.com/watch?v=hlh9rrjG29k)
