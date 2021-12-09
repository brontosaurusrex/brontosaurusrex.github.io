---
published: true
layout: post
date: '2017-01-17 00:32 +0100'
title: 'Blender, stamping with normal brush to normal map'
tags: blender mine
---
- A new texture filled with default normal color, hex 8080FF, make it float. Save the image.
- unwrap the model
- switch to cycles, make the material node, for example:  

    Image Texture >Color> Normal map >Normal> Diffuse BSDF > material
    
![normalNode.jpg]({{site.baseurl}}/media/normalNode.jpg)
    
- Find some normal stamps or make one (that matcap shader might be usefull), they should probably be square.
- Texture paint, be confused, load the brush to Texture, start stamping (Brush Mapping: View Plane)

[![brush3.th.png](//cdn.scrot.moe/images/2017/01/17/brush3.th.png)](https://scrot.moe/image/11dwL) [![brush.th.png](//cdn.scrot.moe/images/2017/01/17/brush.th.png)](https://scrot.moe/image/11UQA)

If the stamps renders inset instead of outset then go to edit mode and a and ctrl+n. Or change your mind.

[![normal2normal.th.png](//cdn.scrot.moe/images/2017/01/17/normal2normal.th.png)](//cdn.scrot.moe/images/2017/01/17/normal2normal.png)

Notes: 
- In edit mode "shift + numpad 7" will align view to selected poli.
- Is there some sort of grid-snaping?
