---
id: 981
title: neverball hard
date: 2010-06-27T20:26:56+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=981
permalink: /2010/06/neverball-hard/
categories:
  - Uncategorized
---
<video width="440" height="250" controls="controls"><source src="/video/neverball.mp4"type="video/mp4" /><source src="/video/neverball.ogv" type="video/ogg" /><source src="/video/neverball.webm" />Your browser does not support the `video` element.</video>

this was captured on ubuntu lynx with the following procedure:
  
1. capture
  
`glc-capture --fps=25 -s -n --disable-audio neverball`
  
2. uncompressed avi intermediate:
  
`glc-play neverball-3927-0.glc -o - -y 1 | mencoder -demuxer y4m - -ovc raw -oac pcm -o file.avi`
  
3. &#8216;edited&#8217; in pitivi and exported as ogv with default settings
  
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2010/06/Screenshot-300x168.png" alt="" title="pitivi" width="300" height="168" class="alignnone size-medium wp-image-989" />](http://brontosaurusrex.69.mu/wp-content/uploads/2010/06/Screenshot.png)