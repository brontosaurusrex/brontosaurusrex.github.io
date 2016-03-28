---
id: 3560
title: copy from list
date: 2014-11-17T16:10:26+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3560
permalink: /2014/11/copy-from-list/
categories:
  - Uncategorized
---
Copy files that are in files.txt in flat fashion to current dir;

<pre>rsync -avb --no-dirs --no-relative --files-from="files.txt" / ./</pre>