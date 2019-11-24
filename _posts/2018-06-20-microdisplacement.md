---
published: true
layout: post
date: '2018-06-20 23:35 +0200'
title: microdisplacement
tags:
  - blender
---
- Render tab: turn on experimental
- Object material tab: settings/geometry = Displacement only
- Modifier tab: add subsurf, set it to adaptive
- Material node: image texture -> Displacement / height -> Material output / Displacement
- Image texture / color can also drive ColorRamp -> Shader Base Color

Texture [http://www.texturemate.com/Textures/seamless-seamless-sci-fi_Free_Texture_366](http://www.texturemate.com/Textures/seamless-seamless-sci-fi_Free_Texture_366)

[![microDisp-fs8.png-QrUEQLKRZRHFG77-th](https://images.weserv.nl/?url=https://i.imgur.com/pDsOTM6.png)](https://images.weserv.nl/?url=https://i.imgur.com/pto1S7k.png)

### Dicing scale set to 0.5:  
[![microDisp1-fs8.png-jqNLsVght6O9gFF-th](https://images.weserv.nl/?url=https://i.imgur.com/vy1UNN7.png)](https://images.weserv.nl/?url=https://i.imgur.com/FZyGpUT.png)

### Stronger displacement:  

[![microDisp4-fs8.png-o2VdGnKc8d68tIQ-th](https://images.weserv.nl/?url=https://i.imgur.com/mGYzu1c.png)](https://images.weserv.nl/?url=https://i.imgur.com/TqI9EQr.png)
[![microDisp6-fs8.png-ghZzusB9CKAQzZw-th](https://images.weserv.nl/?url=https://i.imgur.com/bVnqty9.png)](https://images.weserv.nl/?url=https://i.imgur.com/kDnxwkJ.png)
[![microDisp5-fs8.png-7JBQYgVbVJbu5K1-th](https://images.weserv.nl/?url=https://i.imgur.com/FP0xhXG.png)](https://images.weserv.nl/?url=https://i.imgur.com/FqwNg6G.png)
[![bunsenMicro.png-9HBviD7oN9AakbH-th](https://images.weserv.nl/?url=https://i.imgur.com/DKrEPGP.png)](https://images.weserv.nl/?url=https://i.imgur.com/Gxcys6E.png)
[![bunsenSilicon2.png-3m5PttZ4mrWoc1Q-th](https://images.weserv.nl/?url=https://i.imgur.com/1UjjxlJ.png)](https://images.weserv.nl/?url=https://i.imgur.com/y1NYhZa.png)


### Displacement driven by Pointiness > ramp > Displacement (scale)

[![bunsenMicro3_2x_c-fs8.png-W7K6ncZjv6qeBPe-th](https://images.weserv.nl/?url=https://i.imgur.com/PpphgUT.png)](https://images.weserv.nl/?url=https://i.imgur.com/kUetcB1.png)

### And the one that was a lot of work

[![bunsenMicro6d_gimp1-fs8.png-gCnUYVBS14BbK8x-th](https://images.weserv.nl/?url=https://i.imgur.com/tfuxmvG.png)](https://images.weserv.nl/?url=https://i.imgur.com/fgAgaWx.png)
[![bunsenMicro6d_mono_3x3_b-fs8.png-naqX5TqZPCvM5va-th](https://images.weserv.nl/?url=https://i.imgur.com/gqzUbTF.png)](https://images.weserv.nl/?url=https://i.imgur.com/Jc8KGQZ.png)
[![bunsenMicro8_2x-fs8.png-ZWPa3nw3ELhVivk-th](https://images.weserv.nl/?url=https://i.imgur.com/5oIc9hl.png)](/media/bunsenMicro8_2x.png)

### HUD of some sort

[![bunsenMicro6d_mono_3x3_b_hudSmall-fs8.png-LJDG0wMQm0hY4uy-th](https://images.weserv.nl/?url=https://i.imgur.com/bYFW9dL.png)](https://images.weserv.nl/?url=https://i.imgur.com/CPvnRfp.png)
[![bunsenMicro6d_gimp2_hud-fs8.png-KKBmhuROAcn4cVb-th](https://images.weserv.nl/?url=https://i.imgur.com/LZeRqpQ.png)](https://images.weserv.nl/?url=https://i.imgur.com/P9FNFVg.png)

### Depth map generators

[Jsplacement](https://windmillart.net/?p=jsplacement) is a rather cool pseudo-random 8k displacement map generator made with JavaScript.

[![microDisp8.png-4xrSHh6AktfxWr1-th](https://images.weserv.nl/?url=https://i.imgur.com/oaNfNQl.png)](https://images.weserv.nl/?url=https://i.imgur.com/c4OBdk0.png)
