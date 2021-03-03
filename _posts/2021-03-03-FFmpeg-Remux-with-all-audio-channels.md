---
published: true
layout: post
date: '2021-03-03 15:04'
title: FFmpeg Remux with all audio channels
tags: video 
---
    ffmpeg -i in.mxf -c:v copy -c:a copy -map 0 out.mxf
