---
id: 1174
title: VLC file caching / buffering
date: 2011-02-01T10:52:10+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1174
permalink: /2011/02/vlc-file-caching-buffering/
categories:
  - Uncategorized
---
[<img src="http://brontosaurusrex.69.mu/wp-content/uploads/2011/02/vlc_logo-150x150.png" alt="" title="vlc_logo" width="150" height="150" class="alignleft size-thumbnail wp-image-1176" />](http://brontosaurusrex.69.mu/wp-content/uploads/2011/02/vlc_logo.png)

to get some help start vlc with

`vlc -H`

the command to increase file caching seems to be

`vlc --file-caching number` (where number is in ms, 3000 ms = 3s for example )