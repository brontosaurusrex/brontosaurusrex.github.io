---
published: true
layout: post
date: '2021-11-14 16:02'
title: Blender, echo points, edges, faces
tags: blender 
---
    import bpy

    obdata = bpy.context.object.data

    print('Vertices:')
    for v in obdata.vertices:
        print('{}. {} {} {}'.format(v.index, v.co.x, v.co.y, v.co.z))

    print('Edges:')
    for e in obdata.edges:
        print('{}. {} {}'.format(e.index, e.vertices[0], e.vertices[1]))

    print('Faces:')
    for f in obdata.polygons:
        print('{}. '.format(f.index), end='')
        for v in f.vertices:
            print('{} '.format(v), end='')
        print() # for newline

[In Python_console](https://blender.stackexchange.com/questions/69881/vertices-coords-and-edges-exporting), the problem is I can't figure out how to log the console output and its history is lacking...

Goal: Make a lowres object for [meshspin.js](https://kickstart.ch/pages/meshspin-js.html).