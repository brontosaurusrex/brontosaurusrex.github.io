---
published: true
layout: post
date: '2021-09-17 21:02'
title: Blender set curve geometry parameters for all selected objects
tags: blender 
---
    import bpy
    for obj in bpy.context.selected_objects:
        if obj.type == 'CURVE':
            obj.data.offset = 0
            obj.data.extrude = 0.033
            obj.data.bevel_depth = 0.002
            obj.data.bevel_resolution = 3
            obj.data.dimensions = '2D'

[https://blenderartists.org/t/how-to-copy-curve-geometry/520958/5](https://blenderartists.org/t/how-to-copy-curve-geometry/520958/5)
