---
id: 2559
title: ffmpeg r128 example
date: 2013-04-10T11:38:49+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2559
permalink: /2013/04/ffmpeg-r128-example/
categories:
  - Uncategorized
---
<pre>ffmpeg -nostats -i kajla.mp4 -filter_complex ebur128 -f null - 2> kayla.txt</pre>

then

<pre>tail kayla.txt</pre>

should give you

<pre>Integrated loudness:
    I:         -14.9 LUFS
    Threshold: -24.9 LUFS

  Loudness range:
    LRA:         4.8 LU
    Threshold: -34.9 LUFS
    LRA low:   -17.8 LUFS
    LRA high:  -12.9 LUFS
</pre>

which means that (if we were targeting -23 LUFS), we need correction of :
  
(-23)-(-14) = -9 dB

an integrated loudness info script, r128 and waveform terminal printer audio2ascii (optional):
  
[r128](https://bash-o-saurus-rex.googlecode.com/git/bash/user_bin/r128)
  
[r128graph](https://bash-o-saurus-rex.googlecode.com/git/bash/user_bin/r128graph)

example output
  
[![r128](http://shrani.si/f/1e/u0/8gHPirO/r128.png)](http://shrani.si/f/1e/u0/8gHPirO/r128.png)