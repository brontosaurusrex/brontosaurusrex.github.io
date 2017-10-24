---
published: true
layout: post
date: '2017-10-24 21:37 +0200'
title: blender remote rendering with gpu(s)
---
gpu.py

    import bpy

    bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
    bpy.context.user_preferences.addons['cycles'].preferences.devices[0].use = True

cli (use that gpu.py, render test.blend, -o next to blend file, render just frame 1)

	./blender -P gpu.py -b test.blend -o //file -f 1
    
Use 3 gpus? maybe:

    import bpy
	bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'
    bpy.context.user_preferences.addons['cycles'].preferences.devices[0].use = True
    bpy.context.user_preferences.addons['cycles'].preferences.devices[1].use = True
    bpy.context.user_preferences.addons['cycles'].preferences.devices[2].use = True
