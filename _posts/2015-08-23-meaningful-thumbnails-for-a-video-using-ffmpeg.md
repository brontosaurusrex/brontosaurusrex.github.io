---
id: 3882
title: Meaningful thumbnails for a Video using FFmpeg
date: 2015-08-23T17:33:59+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3882
permalink: /2015/08/meaningful-thumbnails-for-a-video-using-ffmpeg/
categories:
  - Uncategorized
---
<http://superuser.com/questions/538112/meaningful-thumbnails-for-a-video-using-ffmpeg>

edit: This one will also take anamorphic stuff into account:

<pre>ffmpeg -i input.dv -vf scale=iw*sar:ih,thumbnail -frames:v 1 thumb.png</pre>