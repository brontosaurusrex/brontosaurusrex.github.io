---
published: true
layout: post
date: '2017-10-24 21:37 +0200'
title: blender remote rendering with gpu(s)
---
gpu.py

    import bpy

    bpy.context.user_preferences.addons['cycles'].preferences.compute_device_type = 'CUDA'

cli (use that gpu.py, render test.blend, -o next to blend file, render just frame 1)

	./blender -P gpu.py -b test.blend -o //file -f 1
    
This should use **all** gpus.

## Known unknows

	-F EXR
    
-F switch seems to only support one format, one can't do EXR and PNG. To override this behaviour one could set 'File Output' node in compositor, press n to select which format would that be.

## Old cpu vs modern nvidia gpu (3x GTX 1060 3GB)

GPUs are around 26 times faster than CPU :)
