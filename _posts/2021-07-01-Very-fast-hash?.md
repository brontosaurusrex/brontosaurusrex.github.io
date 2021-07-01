---
published: true
layout: post
date: '2021-07-01 15:44'
title: Very fast hash?
tags: misc 
---
xxHash [https://github.com/Cyan4973/xxHash/releases/](https://github.com/Cyan4973/xxHash/releases/), also in bullseye repos.

Benchmark s

    md5sum *.mxf = 18.9 s
    xxhsum *.mxf = 4.1 s
    4,6x faster
