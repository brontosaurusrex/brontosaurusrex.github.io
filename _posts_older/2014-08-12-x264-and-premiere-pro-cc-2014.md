---
id: 3368
title: x264 and premiere pro cc 2014
date: 2014-08-12T18:06:00+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3368
permalink: /2014/08/x264-and-premiere-pro-cc-2014/
categories:
  - Uncategorized
---
the problem;

x264 encoded files are **missing 1st frame** when imported into premiere pro cc 2014

to try, either;

&#8211; remux with mp4box or
  
**lsmash** ( https://github.com/l-smash/l-smash ), write encode to &#8216;output.264 -f h264&#8217; with ffmpeg and then mux with l-smash
  
&#8211; force [1st frame to be keyframe](http://video.stackexchange.com/questions/4904/how-to-force-ffmpeg-to-insert-keyframe-at-first-frame-when-downsampling-a-framer)
  
&#8211; fast\_pskip=1, b\_pyramid=2 / b_adapt=1, &#8230;
  
&#8211; don&#8217;t use b frames

<pre>MP4Box -add test.mp4 test4Mp4box.mp4   &lt; mp4box
muxer -i test.264 -o test3.mp4         &lt; l-smash
ffmpeg -i test.mp4 -vcodec copy -an -bsf h264_mp4toannexb -f h264 test.264
</pre>

( To get mp4box in debian one way is to install gpac (in repos) and remember to use **case-sensitive MP4Box** )

EDIT:

So i'am getting one or two missing frames in the beginning, when using ffmpeg/x264 encoded files in premiere pro cc 2014, does not happen with older ffmpeg and x264 (core 120), clues?
  
encoding setting and type of muxer does not seem to matter
  
l-smash muxer does not change anything
  
also mov or mp4 containers does not change anything

**Older versions of ffmpeg/x264 (core 120) seems to be fine**.

Solution: Use present version for backups (420, 8 bit crf 18 with tune film seems to be more than enough) and transcode externally to prores before using.