---
published: true
layout: post
date: '2017-01-03 10:04 +0100'
title: Disney BSDF/BSSRDF in Blender?
tags: blender
---
> Pascal (Germany) joined the Cycles team this year, contributing the implementation of the Disney BSDF/BSSRDF.

[https://en.wikipedia.org/wiki/Bidirectional_reflectance_distribution_function](https://en.wikipedia.org/wiki/Bidirectional_reflectance_distribution_function)

> This new physically based shading model  is able to reproduce a wide range of materials with only a few parameters.

[https://www.blender.org/development/the-top-30-blender-developers-2016/](https://www.blender.org/development/the-top-30-blender-developers-2016/)

[http://blog.selfshadow.com/publications/s2015-shading-course/burley/s2015_pbs_disney_bsdf_notes.pdf](http://blog.selfshadow.com/publications/s2015-shading-course/burley/s2015_pbs_disney_bsdf_notes.pdf)

[https://disney-animation.s3.amazonaws.com/library/s2012_pbs_disney_brdf_notes_v2.pdf](https://disney-animation.s3.amazonaws.com/library/s2012_pbs_disney_brdf_notes_v2.pdf)

![](http://blog.selfshadow.com/images/s2015-shading/title.jpg)

edit: Something in "These builds are for developer use only!": 
[![disney27min.th.png](//cdn.scrot.moe/images/2017/01/04/disney27min.th.png)](//cdn.scrot.moe/images/2017/01/04/disney27min.png)

tl sss  
tr dark metal  
bl dielectric  
br dielectric with some coating  

Note: After 27 minutes of rendering sss material is still noisy while metal and dielectrics are basically done after about 3 minutes.

13 hours later and different hdri  
[![13hoursLater.th.png](//cdn.scrot.moe/images/2017/01/05/13hoursLater.th.png)](//cdn.scrot.moe/images/2017/01/05/13hoursLater.png)

Note2: Disney node inputs seems to be very [substance painter friendly](//cdn.scrot.moe/images/2016/09/11/asian_dragon_substanceMetalLayout.png) (I like!).

Note3: There is no refractive shader/controler exposed (refraction only happens with transparency). < No big deal.

Cycles roadmap  
[https://wiki.blender.org/index.php/Dev:Source/Render/Cycles/Roadmap](https://wiki.blender.org/index.php/Dev:Source/Render/Cycles/Roadmap)
