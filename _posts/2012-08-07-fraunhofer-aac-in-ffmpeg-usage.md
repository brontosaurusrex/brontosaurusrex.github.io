---
id: 2307
title: fraunhofer AAC in ffmpeg, usage
date: 2012-08-07T09:01:55+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=2307
permalink: /2012/08/fraunhofer-aac-in-ffmpeg-usage/
categories:
  - Uncategorized
---
playing around, testing with new ffmpeg (from git), only interested in vbr modes, this looks like it might work:

for lc:

<pre>ffmpeg -i in -c:a libfdk_aac -flags +qscale -global_quality 2 -afterburner 1 -vn out.m4a</pre>

(valid range for -global_quality seems to be >1 (1=error))

for he:

<pre>ffmpeg -i in -c:a libfdk_aac -profile:a aac_he -flags +qscale -global_quality 1 -afterburner 1 -vn out.m4a</pre>

(valid range for -global_quality seems to be 1-5)

for he_v2:

<pre>ffmpeg -i in -c:a libfdk_aac -profile:a aac_he_v2 -flags +qscale -global_quality 1 -afterburner 1 -vn out.m4a</pre>

(valid range for -global_quality seems to be 1-2)

&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;-

Real world speed test on entry level mac-pro (Lion), encoding one album from flac source:
  
case1: flac > fdk\_aac (-flags +qscale -global\_quality 2 -afterburner 1), time = 02:53 (slow), without afterburner = 02:52 (slow)
  
case2: flac > intermediate aif > apple aac (afconvert -v -f &#8220;m4af&#8221; -s 3), time = 01:10 (fast)
  
(note: this speed test is small and most likely irrelevant, could also be some mistake I did during compilation of ffmpeg with fdk)