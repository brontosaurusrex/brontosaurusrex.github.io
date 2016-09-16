---
published: true
layout: post
date: '2016-02-17 16:33 +0100'
title: 'Blender, shadow pass'
---

Assign cube to render layer one, set 2nd layer as mask layer.  
Move ground plane to layer 2, assign render to layer 2, enable Shadow under Passes.

![renderLayers.png]({{site.baseurl}}/media/renderLayers.png)

Make a compositing node like this

![shadowLayerCompositingNode.png]({{site.baseurl}}/media/shadowLayerCompositingNode.png)

1. optional node to control shadow intensity 
2. here you can plug your custom background

Example scene  
[shadow_pass.blend.zip](/blends/shadow_pass.blend.zip)  
and compositing node group scene  
[shadowCatcherGroup.blend.zip](/blends/shadowCatcherGroup.blend.zip)

& some video found on youtube  
[https://www.youtube.com/watch?v=Ke7plNnwYl0](https://www.youtube.com/watch?v=Ke7plNnwYl0)
