---
published: true
layout: post
date: '2017-01-17 00:32 +0100'
title: 'Blender, stamping with normal brush to normal map'
---
1. A new texture filled with default normal color, hex 8080FF, make it float. Save the image.
2. unwrap the model
3. switch to cycles, make the material node, for example:  

    Image Texture >Color> Normal map >Normal> Diffuse BSDF > material
    
4. Find some normal stamps or make one (that matcap shader might be usefull), they should probably be square.

[![brush3.th.png](https://cdn.scrot.moe/images/2017/01/17/brush3.th.png)](https://scrot.moe/image/11dwL) [![brush.th.png](https://cdn.scrot.moe/images/2017/01/17/brush.th.png)](https://scrot.moe/image/11UQA)

5. Texture paint, be confused, load the brush to Texture, start stamping (Brush Mapping: View Plane)

If the stamps renders inset instead of outset then go to edit mode and a and ctrl+n. Or change your mind.

[![normal2normal.th.png](https://cdn.scrot.moe/images/2017/01/17/normal2normal.th.png)](https://cdn.scrot.moe/images/2017/01/17/normal2normal.png)
