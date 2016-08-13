---
id: 299
title: Command Line Flash 8 FLV Encoding
date: 2007-03-22T17:06:40+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070322-100640
permalink: /2007/03/command-line-flash-8-flv-encoding/
categories:
  - video, software
---
<a href="http://sh0dan.blogspot.com/2006/09/command-line-flash-8-flv-encoding.html" target="_blank" >http://sh0dan.blogspot.com/2006/09/comm &#8230; oding.html</a>  
_I have been searching for a command line Flash 8 (VP6) FLV video creation tool for a long time. I've bought On2's Flix Pro &#8211; but even though it is a mile better than Sorenson's horrible Squeeze, it still had some serious issues with AviSynth input for instance._

my avs2avi (1000 kbits/s), vp6 2pass config is here:  
<a href="/downloads/vp6_avs2avi_2pass_config/vp62.zip" target="_blank" >/downloads/vp6_avs2 &#8230; g/vp62.zip</a>

and full mirror:  
<a href="/downloads/vp6_avs2avi_2pass_config/full_mirror/" target="_blank" >/downloads/vp6_avs2 &#8230; ll_mirror/</a>

better audio would be (change in example.bat):  
ffmpeg -ab 128 -ar 44100 -y -i &#8220;temp.avi&#8221; -vcodec copy -i &#8220;example.avs&#8221; &#8220;example3.flv&#8221;

related thread:  
<a href="http://forum.doom9.org/showthread.php?t=123788" target="_blank" >http://forum.doom9.org/showthread.php?t=123788</a>