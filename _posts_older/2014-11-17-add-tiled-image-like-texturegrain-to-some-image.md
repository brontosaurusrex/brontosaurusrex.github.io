---
id: 3562
title: '#! add tiled image (like texture/grain) to some image'
date: 2014-11-17T23:07:28+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3562
permalink: /2014/11/add-tiled-image-like-texturegrain-to-some-image/
categories:
  - Uncategorized
---
<pre>convert input_1280x1024.png -background none -size 1280x1024 tile:/path/to/default-tile.png -composite out_1280x1024.png</pre>