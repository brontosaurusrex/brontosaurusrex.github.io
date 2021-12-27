---
id: 3925
title: xz as audio compressor?
date: 2015-10-19T10:01:02+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3925
permalink: /2015/10/xz-as-audio-compressor/
categories:
  - Uncategorized
---
<https://www.hydrogenaud.io/forums/index.php?s=&showtopic=102291&view=findpost&p=854974>

<pre>xz -vvk --delta=dist=4 --delta=dist=4 --lzma2=dict=128MiB,lc=0,lp=2,pb=2,mode=normal,nice=273,mf=bt4,depth=1024 Audio_file.wav</pre>