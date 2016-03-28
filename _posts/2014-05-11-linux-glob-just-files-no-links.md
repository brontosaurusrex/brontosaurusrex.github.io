---
id: 3192
title: linux, glob just files, no links
date: 2014-05-11T16:08:54+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3192
permalink: /2014/05/linux-glob-just-files-no-links/
categories:
  - Uncategorized
---
<pre>find . -maxdepth 1 -type f -print0 | xargs -0r yourCommand</pre>

or more precisely;

<pre>find . -type f -name "*.svg" -print0 | xargs -0r svgToBW</pre>