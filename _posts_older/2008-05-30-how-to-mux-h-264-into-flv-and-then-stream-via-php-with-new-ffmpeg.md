---
id: 135
title: how to mux h.264 into flv (and then stream via php) with new FFMpeg
date: 2008-05-30T20:54:18+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry080530-135418
permalink: /2008/05/how-to-mux-h-264-into-flv-and-then-stream-via-php-with-new-ffmpeg/
categories:
  - video, software
---
<a href="http://forum.doom9.org/showthread.php?p=1144019#post1144019" target="_blank" >http://forum.doom9.org/showthread.php?p &#8230; ost1144019</a>

basically from exisiting mp4 files you would;  
_ffmpeg -i name\_file.mp4 -vcodec copy -acodec copy name\_file.flv_  
then inject metadata as with vp6 flv file  
_flvmdi name_file.flv /k_

file will stream via php script now.

example;  
<a href="http://somestuff.org/flashAVC/flvplayer.php?moviename=movies/bbb-AVC-stream-x640y352.flv" target="_blank" >http://somestuff.org/flashAVC/flvplayer &#8230; 40y352.flv</a>