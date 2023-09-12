---
published: true
layout: post
date: '2017-02-07 14:00 +0100'
title: Debian Stretch OpenGL version?
tags: video linux blender
---
![openGl.png]({{site.baseurl}}/media/openGl.png)

Stretch in VirtualBox

    glxinfo | grep -i opengl

returns

    OpenGL vendor string: VMware, Inc.
    OpenGL renderer string: Gallium 0.4 on llvmpipe (LLVM 3.9, 128 bits)
    OpenGL core profile version string: 3.3 (Core Profile) Mesa 13.0.3
    OpenGL core profile shading language version string: 3.30
    OpenGL core profile context flags: (none)
    OpenGL core profile profile mask: core profile
    OpenGL core profile extensions:
    OpenGL version string: 3.0 Mesa 13.0.3
    OpenGL shading language version string: 1.30
    OpenGL context flags: (none)
    OpenGL extensions:
    OpenGL ES profile version string: OpenGL ES 3.0 Mesa 13.0.3
    OpenGL ES profile shading language version string: OpenGL ES GLSL ES 3.00
    OpenGL ES profile extensions:
    
Jessie on real hardware returns

    OpenGL vendor string: Intel Open Source Technology Center
    OpenGL renderer string: Mesa DRI Intel(R) Ironlake Desktop 
    OpenGL version string: 2.1 Mesa 10.3.2
    OpenGL shading language version string: 1.20
    OpenGL extensions:
    OpenGL ES profile version string: OpenGL ES 2.0 Mesa 10.3.2
    OpenGL ES profile shading language version string: OpenGL ES GLSL ES 1.0.16
    OpenGL ES profile extensions:
    
What would that mean for Blender 2.8 happines, when released?
