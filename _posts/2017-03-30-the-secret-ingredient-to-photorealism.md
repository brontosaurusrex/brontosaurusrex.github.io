---
published: true
layout: post
date: '2017-03-30 12:21 +0200'
title: 'The Secret Ingredient to Photorealism '
tags: video blender
---
[https://www.youtube.com/watch?v=m9AT7H4GGrA](https://www.youtube.com/watch?v=m9AT7H4GGrA)  
[http://www.blenderguru.com/tutorials/secret-ingredient-photorealism/](http://www.blenderguru.com/tutorials/secret-ingredient-photorealism/)  
[https://www.youtube.com/watch?v=53m-17Y_zJg](https://www.youtube.com/watch?v=53m-17Y_zJg)

> Why sRGB isn't suitable for rendering, and why 'Filmic Blender' is the magic solution that fixes everything.

[https://sobotka.github.io/filmic-blender/](https://sobotka.github.io/filmic-blender/)

![](https://s3.amazonaws.com/blenderguru.com/uploads/2017/02/29089698821_9b865a6cb5_o-673x674.jpg)

Quick test  
[![filmicLogEncodingBase.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/30/filmicLogEncodingBase.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/03/30/filmicLogEncodingBase.png)

Not sure if there is any difference compared to rendering to fullrange exr and doing post in modern photoshop/gimp (What I have been doing till now). It might be usefull to use that as a presentation/preview render thought, but I would like my film-looks back.

[https://github.com/sobotka/filmic-blender/issues/30](https://github.com/sobotka/filmic-blender/issues/30)

CDL?

[http://blender.stackexchange.com/questions/55231/what-is-the-the-asc-cdl-node](http://blender.stackexchange.com/questions/55231/what-is-the-the-asc-cdl-node)

> ASC-CDL stands for the American Society of Cinematograpy's Color Decisions List
> It's designed to create a standarized protocol to share basic color correction data across different systems form different vendors.
> The functions that the ASC-CDL node provides in blender are: SLOPE , OFFSET and POWER.

^ Will not work in viewport, so pretty useless. (Unless I can generate presets with this node for the filmic-blender itself?)

pro

> mike pan on March 17, 2017 7:15 pm

> That's correct. Filmic doesn't operate on the 32bit data (exrs are always saved in a linear format). It's a LUT for crunching the HDR scene data into 8bit images. In theory you wouldn't use filmic until you are done with all your compositing and vfx.

slightly con

> Ben Kai • a month ago

> You've been able to open exr's in Photoshop for a while now, though it's been a long fight with one of their lead engineers for a while now with regard to how it implements alpha channels. We finally managed to get them to do the right thing but it was like pulling teeth.

> But opening exr's is a different thing than being able to view them under openColorIO profiles (which is what filmic blender is). Photoshop does not support openColorIO. It uses ICC profiles which are more prevalent in print color pipelines. That means that if you save an exr from blender and open it up in Photoshop it won't look the same because the scene referred data which is what is saved in an exr will not be able to be translated into the display referred data in the same way that happens while you are looking at the files in blender.

> For that you will need an application that uses openColorIO profiles like Nuke or affinity photo or something like it.

Supposedly this should be in 2.79, but can't locate in here  
[https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.79](https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.79) (There is some sort of shadow-catcher mentioned btw).

Knowhow  
[http://opencolorio.org/userguide/contexts.html#per-shot-grades](http://opencolorio.org/userguide/contexts.html#per-shot-grades)



