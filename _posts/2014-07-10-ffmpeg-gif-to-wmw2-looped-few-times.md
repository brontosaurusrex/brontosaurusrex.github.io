---
id: 3282
title: ffmpeg, gif to wmw2 (looped few times)
date: 2014-07-10T20:37:35+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3282
permalink: /2014/07/ffmpeg-gif-to-wmw2-looped-few-times/
categories:
  - Uncategorized
---
1. uncompressed intermediate
  
`ffmpeg -i some.gif -c:v huffyuv tmp.avi`

2. looping
  
`ffmpeg -i "concat:tmp.avi|tmp.avi|tmp.avi" -c copy master.avi`

3. encoding
  
`ffmpeg -i master.avi -b 1500k -vcodec wmv2 -r 25 horse_loop_25.wmv`