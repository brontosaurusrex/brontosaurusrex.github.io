---
id: 3933
title: ffmpeg mxf export each track
date: 2015-10-21T09:49:43+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3933
permalink: /2015/10/ffmpeg-mxf-export-each-track/
categories:
  - Uncategorized
---
<pre>ffmpeg -i 2xmono.mxf -vn -map 0:1 -c:a pcm_s24le 1.wav -map 0:2 -c:a pcm_s24le 2.wav</pre>

then you could join to stereo and mux to mkv

<pre>sox -M 1.wav 2.wav stereo.wav
ffmpeg -i file.mxf -i stereo.wav -acodec copy -vcodec copy out.mkv</pre>