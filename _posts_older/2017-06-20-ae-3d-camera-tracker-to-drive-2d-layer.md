---
published: true
layout: post
date: '2017-06-20 15:55 +0200'
title: AE 3d camera tracker to drive 2d layer
tags: video blender
---
a. Do the solving  
b. Create null and camera  
c. On the 2d layer that should follow this null in 3d space add the expression

    a=thisComp.layer("null");
    a.toComp(a.anchorPoint);
    
d. Play around with Anchor point to reposition stuff if needed

keywords: After effects, camera tracker, 3d to 2d

