---
id: 829
title: ffmpeg mxf to png mov (ignore audio)
date: 2010-05-04T20:20:23+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=829
permalink: /2010/05/ffmpeg-mxf-to-png-mov-ignore-audio/
categories:
  - Uncategorized
---
`ffmpeg -i C0002.MXF -an -vcodec png C0002.mov`
  
-an stands for ignore audio as it seems

examples of ffmpeg usage:
  
<http://linuxnut.org/2009/01/ffmpeg/>