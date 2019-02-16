---
published: true
layout: post
date: '2019-02-16 17:01 +0100'
title: Extract bz2 faster
tags:
  - linux
---
## Premise

Extraction times cannot be slower than download times

## Tests & solution

The usual

    time tar xjf blender-2.79-9800837b9879-linux-glibc224-x86_64.tar.bz2 
    tar xjf blender-2.79-9800837b9879-linux-glibc224-x86_64.tar.bz2  24.68s user 1.62s system 105% cpu 24.835 total

After 'apt install lbzip2'

    time lbzip2 -d blender-2.79-9800837b9879-linux-glibc224-x86_64.tar.bz2 
    lbzip2 -d blender-2.79-9800837b9879-linux-glibc224-x86_64.tar.bz2  34.29s user 1.09s system 788% cpu 4.487 total # + additional 0.5s to untar

Making tar to use lbzip2 for decompression

    time tar -I lbzip2 -xvf blender-2.79-9800837b9879-linux-glibc224-x86_64.tar.bz2
    ...
    34.53s user 1.96s system 774% cpu 4.709 total < # this.
