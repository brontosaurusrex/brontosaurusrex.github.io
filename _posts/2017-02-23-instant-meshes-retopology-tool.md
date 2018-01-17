---
published: true
layout: post
date: '2017-02-23 11:41 +0100'
title: Instant meshes (retopology tool?)
tags: blender
---
[https://github.com/wjakob/instant-meshes](https://github.com/wjakob/instant-meshes)

> We present a novel approach to remesh a surface into an isotropic
triangular or quad-dominant mesh using a unified local smoothing
operator that optimizes both the edge orientations and vertex po-
sitions in the output mesh.  Our algorithm produces meshes with
high isotropy while naturally aligning and snapping edges to sharp
features.  The method is simple to implement and parallelize, and
it can process a variety of input surface representations, such as
point clouds, range scans and triangle meshes

This does compile on Jessie, but will not run due to missing opengl 3.3 context (Stretch? OSX? Arch?). It does run on win7.
