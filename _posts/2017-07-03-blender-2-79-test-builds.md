---
published: true
layout: post
date: '2017-07-03 12:48 +0200'
title: Blender 2.79 test builds (denoiser!)
tags: blender
---
[https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.79](https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.79)

## In Cycles  
- denoiser (in render layers tab at the bottom near passes)
- filmic
- shadow cacher
- principled

## Rendered with only 12 samples + default denoiser  
[![denoiser.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/denoiser.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/denoiser.png)

## with alpha, dof and such
[![plane14denoiserAlphaDOF3png.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/plane14denoiserAlphaDOF3png.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/plane14denoiserAlphaDOF3png.png)

And this is one way of fixing alpha levels  
[![fixingAlphaLevelsCompositor.th.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/fixingAlphaLevelsCompositor.th.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/07/03/fixingAlphaLevelsCompositor.png)
