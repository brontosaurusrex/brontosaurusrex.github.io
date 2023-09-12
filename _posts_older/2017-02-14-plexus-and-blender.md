---
published: true
layout: post
date: '2017-02-14 11:52 +0100'
title: Plexus and Blender
tags: blender mine
---
## [What they did](https://i.stack.imgur.com/dr6am.jpg)

[http://blender.stackexchange.com/questions/28789/create-plexus-plugin-like-effect](http://blender.stackexchange.com/questions/28789/create-plexus-plugin-like-effect)

edit: AE [Rowbyte Plexus2 plugin gui](//cdn.scrot.moe/images/2017/02/14/plexus_ae_plugin_gui.png) look and feel.

## What I did  
[![plexus_blender_ps1.th.png](//cdn.scrot.moe/images/2017/02/15/plexus_blender_ps1.th.png)](//cdn.scrot.moe/images/2017/02/15/plexus_blender_ps1.png)
[![plexus6_nr_ps1.th.png](//cdn.scrot.moe/images/2017/02/15/plexus6_nr_ps1.th.png)](//cdn.scrot.moe/images/2017/02/15/plexus6_nr_ps1.png)

Basically: Edges are shader effect, connecting nodes are actual geometry (produced with particles on vertcies and a little sphere). [Landscape shader](//cdn.scrot.moe/images/2017/02/15/plexusMaterial.jpg) is mostly mix of emission and transparent nodes, scene has no additional lights. Connecting nodes (little spheres) are pure emission material.

Edges as shader effect are good, since they provide unfiform wire width and they are bad since the effect triangulates geometry and rendering times are stupidly high for such basic output (This could easily be some sort of opengl output).

An attempt to hide some of the edges using 

    geometry > normal > separate ... > various math > wireframe size
    
type of nodes.

[![plexusRender.th.png](//cdn.scrot.moe/images/2017/02/15/plexusRender.th.png)](//cdn.scrot.moe/images/2017/02/15/plexusRender.png)

and some glare in post

[![plexus10postGlare_8bpc.th.png](//cdn.scrot.moe/images/2017/02/15/plexus10postGlare_8bpc.th.png)](//cdn.scrot.moe/images/2017/02/15/plexus10postGlare_8bpc.png)

and gimp 2.9 git seems to have some problems when color-correcting hdr stuff

[![plexus10postGlare_gimp1.th.png](//cdn.scrot.moe/images/2017/02/15/plexus10postGlare_gimp1.th.png)](//cdn.scrot.moe/images/2017/02/15/plexus10postGlare_gimp1.png)

Animation experiment

[https://youtu.be/T-WCL81t31I](https://youtu.be/T-WCL81t31I)  
[https://youtu.be/U-Ot20GHOYU](https://youtu.be/U-Ot20GHOYU)

