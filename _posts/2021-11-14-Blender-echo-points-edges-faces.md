---
published: true
layout: post
date: '2021-11-14 16:02'
title: Blender, echo points, edges, faces
tags: blender 
---
Goal: Make a lowres object for [meshspin.js](https://kickstart.ch/pages/meshspin-js.html).

What to export from Blender? It appears that meshspin is operating on vertices and edges (no faces?).

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

Edit, this might be the answer:

     Preferences/System/Console Scrollback Lines

Question for you. What's better than 256 console lines? Answer for you. 32768 console lines.

Meshspin example data:

    var cube = {
        nodes: [
        {x:1, y: 1, z: -1},
        {x:1, y: -1, z: -1},
        {x:-1, y: -1, z: -1},
        {x:-1, y: 1, z: -1},
        {x:1, y: 1, z: 1},
        {x:1, y: -1, z: 1},
        {x:-1, y: -1, z: 1},
        {x:-1, y: 1, z: 1},
        ],
        edges: [[0,1], [0,3], [0,4], [0,2], [1,3], [1,5], [1,2], [2,3], [2,6], [3,7], [4,5], [4,7], [5,6], [6,7]],
    };
    var mesh = new MeshSpin();
    mesh.figure(cube);
    mesh.setup('wrapper');
    mesh.run();

Reformating to get close to desired output:

    import bpy
    obdata = bpy.context.object.data

    print('Vertices:')
    for v in obdata.vertices:
        print('{}{}{}{}{}{}{}'.format('{x:', v.co.x, ',y:', v.co.y, ',z:', v.co.z, '},'))

    print('Edges:')
    for e in obdata.edges:
        print('{}{}{}{}{}'.format('[', e.vertices[0], ',', e.vertices[1], '],'), end =" ")

returns:

    # points
    {x:-0.8110758662223816,y:0.4698903560638428,z:2.2209718227386475},
    {x:-0.544812798500061,y:-0.7124779224395752,z:1.0221654176712036},
    {x:-0.0627538338303566,y:2.0761661529541016,z:1.7460660934448242},
    {x:-0.08819231390953064,y:3.478560447692871,z:2.216146230697632},
    {x:-0.2751067578792572,y:4.331906318664551,z:2.8761749267578125},
    ...
    # edges    
    [46,0], [78,1], [20,0], [2,14], [2,124], [2,56], [3,81], [48,125], [57,3], [126,49], [5,4], [50,61], [84,61], [60,5], [61,49], [67,1], [1,85], [51,15], [86,51], [51,85], [7,6], [9,8], [88,8], [87,8], [9,7], [1,10], [10,90], [91,90], [10,91]
    ...

[Putting it all together.](/meshspinBrex.htm)
<iframe scrolling="no" src="/meshspinBrex.htm" height="300" width="500" title="brex 3d" style="border:none;"></iframe>

<small>Note that fake meshspin shading wont work, <br>since this object is not concave enough.</small>