---
published: true
layout: post
date: '2020-07-14 09:22'
title: Fusion Notes
tags: video 
---
This notes relate to Resolve inbuilt fusion tab, Davinci Resolve Studio 16.2.3.015.

## Shorcuts

Ctrl + p is pass-through for a node.  
Ctrl + t is switch bg and fg  
Ctrl + shift + lmb drag pans the node tree  
V toggles node minimap  
shift + space opens search for nodes  
Ctrl + G group, Ctrl + E toggle collapse

## Preview

Rmb on node and select 'Create/play preview on'. Shift+Rmb will reuse settings and skip quality selection tab.  
Note: Seems to be flaky, easier way is to exit back to resolve timeline and see it rendered there.

What exactly is proxy/autoproxy thing?

## Various

There is save image in viewers and it will save png with alpha.

Routers are tiny nodes used to reshape the look of the node-tree. To add one, alt + click anywhere on the connection  

To extract/disconnect node or nodes from a tree shift-drag them.  

Node format is not binary, one can copy paste them into text editor and back.  

Nodes can be instanced, ctrl+c a node, rmb on background and select 'paste instance'. A green line shows the link. Instance can be deinstanced. More interestingly a single parameter on that instance can be deinstanced (rmb on parameter name in inspector and choose deinstance). 

Organization can be performed by using underlay boxes or groups. Groups can be precached on disk (in theory, in reality this seems to freeze fusion in resolve..., maybe in standalone version?). Groups can be saved to disk (rmb/settings/save as - page 172) and reused by drag droping.

Macros are an advanced version of groups, one that enables creator to select exposed user inputs... Shall be used to generate for example title templates for resolve editor. Titles should be stored in *C:\Program Files\Blackmagic Design\DaVinci Resolve\Fusion\Templates\Edit\Titles*.

## Layers

[![fusionLayers.PNG-cgvo5PUq9yDycCA-md](https://images.weserv.nl/?url=https://i.imgur.com/Se7fS2s.png)](https://images.weserv.nl/?url=https://i.imgur.com/foMlt9f.png)

This are 4k layers (png) and I seem to run out of gpu mem after adding a few more of this lines...

[![fusionpsdLayers.PNG-l5n8rCFr7442zeL-md](https://images.weserv.nl/?url=https://i.imgur.com/NdedFXl.png)](https://images.weserv.nl/?url=https://i.imgur.com/6JaFWVY.png)

This is multilayer psd (scaled down to 1920x1920), with instaces of this one single input and deinstancing layer and selecting each layer in inspector we can recreate this layer uhmm stuff. Seems like a lot of manual work.

An attempt to add some sort of preturb/shake animation to some/most of this layers, precache will take 35 minutes on this machine, seems really really slow (and this is pure 2d comp). 'Cache to disk' didn't really work, manual render from resolve timeline now.

2nd pass, fx and some compositing  
[![image-nohash-th](https://images.weserv.nl/?url=https://i.imgur.com/LYNJbpvb.png)](https://images.weserv.nl/?url=https://i.imgur.com/LYNJbpv.png)
[![image-nohash-th](https://images.weserv.nl/?url=https://i.imgur.com/9qiREeJb.png)](https://images.weserv.nl/?url=https://i.imgur.com/9qiREeJ.png)
[![image-nohash-th](https://images.weserv.nl/?url=https://i.imgur.com/umfCG4Db.png)](https://images.weserv.nl/?url=https://i.imgur.com/umfCG4D.png)
[![image-nohash-th](https://images.weserv.nl/?url=https://i.imgur.com/uqOvXcAb.png)](https://images.weserv.nl/?url=https://i.imgur.com/uqOvXcA.png)

## Experiments

Merge node has in 3rd tab of inspector an option to select what is used as mask/key channel (should only show when mask is connected).

[![Annotation 2020-07-11 102800.png-9qKYS8crzjAmnJr-md](https://images.weserv.nl/?url=https://i.imgur.com/1Cs5Ldl.png)](https://images.weserv.nl/?url=https://i.imgur.com/EgLmfdj.png)

Higly profesional final comp (with a lot of confusion what matte really is at what point ...)

[![final.png-frIHkooohMcMbmk-md](https://images.weserv.nl/?url=https://i.imgur.com/yyNrGBo.png)](https://images.weserv.nl/?url=https://i.imgur.com/ftfHngt.png)  
[![image-nohash-md](https://images.weserv.nl/?url=https://i.imgur.com/vO8s71hl.png)](https://images.weserv.nl/?url=https://i.imgur.com/vO8s71h.png)

The one with TV effect

[![image-nohash-md](https://images.weserv.nl/?url=https://i.imgur.com/8IDvANJl.png)](https://images.weserv.nl/?url=https://i.imgur.com/8IDvANJ.png)  
[![brexFusion4-fs8.png-1qfjPYyEcSkeVAm-md](https://images.weserv.nl/?url=https://i.imgur.com/AzjGtHsl.png)](https://images.weserv.nl/?url=https://i.imgur.com/AzjGtHs.png)

[Animation](https://youtu.be/7_6eLm6ouC4)


