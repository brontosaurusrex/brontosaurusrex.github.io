---
published: true
layout: post
date: '2017-09-03 00:36 +0200'
title: link to Blender
tags: linux blender bash mine
---
    lynx -listonly -nonumbers -dump https://builder.blender.org/download/ | grep x86_64 | grep linux | grep https | head -1
    
Sequence of greps is an easy way to get 'grep AND logic'. Head -1 should limit results (assuming stable version is first). Command should return a link like:

    https://builder.blender.org/download/blender-2.79-32e36a17824-linux-glibc219-x86_64.tar.bz2
    
## semi-automatic solution

    cd ~/tmp || exit
    wget $(lynx -listonly -nonumbers -dump https://builder.blender.org/download/ | grep x86_64 | grep linux | grep https | head -1) -O blender-tmp
    rm -rf blender
    mkdir blender
    tar xvjf blender-tmp --directory blender --strip-components=1
    rm blender-tmp
    # move 'blender' dir manually to say ~/apps
    
## getBlender script
 
 [https://github.com/brontosaurusrex/stretchbang/blob/master/getBlender](https://github.com/brontosaurusrex/stretchbang/blob/master/getBlender)
