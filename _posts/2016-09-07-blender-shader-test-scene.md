---
published: true
layout: post
date: '2016-09-07 00:52 +0200'
title: Blender shader test scene
---
Introducing [Stanford Asian Dragon](http://graphics.stanford.edu/data/3Dscanrep/), faces reduced to around 350.000 to make it renderable.

## Download  
[asian_dragon.blend]({{site.baseurl}}/blends/asian_dragon_hires.blend.zip) < simple  
[asian_dragon_shadowCatch.blend]({{site.baseurl}}/blends/asian_dragon_hires_shadowCatch.blend.zip) < with [quasi shadow catching](https://cdn.scrot.moe/images/2016/09/09/quasiShadowCatcher.jpg) compositing node

## Shadow catcher (Compositing nodes)
It turns out that shadow catcher is much easier to control by just using black and white levels of the RGB-curves node (a.) or a color-ramp (even better), but one has to move the box-mask (b.) to the right.
![shadowCatcherFix.jpg]({{site.baseurl}}/media/shadowCatcherFix.jpg)

## Test renders (3440x1440)
[![dragonMetalic_ps2.th.png](https://cdn.scrot.moe/images/2016/09/07/dragonMetalic_ps2.th.png)](https://cdn.scrot.moe/images/2016/09/07/dragonMetalic_ps2.png)
[![dragonPlastic_ps2.th.png](https://cdn.scrot.moe/images/2016/09/07/dragonPlastic_ps2.th.png)](https://cdn.scrot.moe/images/2016/09/07/dragonPlastic_ps2.png)

## Substance painter experiment
[![asian_dragon_substanceMachineLayout.th.png](https://cdn.scrot.moe/images/2016/09/11/asian_dragon_substanceMachineLayout.th.png)](https://cdn.scrot.moe/images/2016/09/11/asian_dragon_substanceMachineLayout.png)  
Reduced poligons even more, smoothed, quick UV unwrap, export as obj, load in Substance Painter ..., export textures, import those into Blender, and the image is showing a "simple" material node. Now the car-paint has no roughnes input, so the render is kinda wrong. p.s. And the metal mix part doesn't do anything in this case.