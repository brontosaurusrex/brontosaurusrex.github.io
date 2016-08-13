---
id: 47
title: wd tv workflow
date: 2009-07-06T18:57:14+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry090706-115714
permalink: /2009/07/wd-tv-workflow/
categories:
  - video, software, hardware
---
**official page**  
<a href="http://www.wdc.com/en/products/wdtv/" target="_blank" >http://www.wdc.com/en/products/wdtv/</a>

**thumbnails**   
resource <a href="http://s13works.wordpress.com/2009/06/15/need-some-thumbnails-for-your-wdtv/" target="_blank" >http://s13works.wordpress.com/2009/06/1 &#8230; your-wdtv/</a>  
solution <a href="/downloads/makethumb_wdtv/totalwire/" target="_blank" >/downloads/makethum &#8230; totalwire/</a>  
External thumbnail are supported with firmware version 1.02.07, example naming:  
file.mp4  
file.jpg

or maybe you can add the thumbs to the stream itself (untested)  
`mp4box.exe -add "video.264" -add "audio.aac" -itags cover="cover.jpg" "out.mp4"`

**wdtv and x264**  
good looking guide <a href="http://www.networkedmediatank.com/wiki/index.php/Encoding_Guide_for_DVD_to_H264#Source_Aspect_Ratio" target="_blank" >http://www.networkedmediatank.com/wiki/ &#8230; pect_Ratio</a>

<pre>x264 --sar values that one could use<br />           non-ebu  ebu<br />16:9 SAR = 64:45    16:11<br />4:3  SAR = 16:15    12:11<br /></pre>

p.s. any extended sar values seems to work as well (like 711:500 for example)

<img src="/images/sample_aspect_ratio.png" width="452" height="57" border="0" alt="" />

**subtitles**  
utf-8 is supported with srt format (and it works for me), about srt (matroška seems to convert anything into utf-8);  
<a href="http://www.matroska.org/technical/specs/subtitles/srt.html" target="_blank" >http://www.matroska.org/technical/specs &#8230; s/srt.html</a>

**misc**  
resizeCalc can now spit &#8211;sar values as well, for example to encode anamorfic DVD source with x264 without resizing, you could crop black borders and use the specified sar values:  
<a href="http://resizecalc.sourceforge.net/index.php?ssmw=720&#038;sar=1.42222&#038;sar2=&#038;ssmh=576&#038;CT=80&#038;CL=&#038;CR=&#038;CB=80&#038;mplayCrop=&#038;trw=&#038;dar=1.42222&#038;dar2=&#038;modw=&#038;modh=&#038;padw=&#038;padh=&#038;css=&#038;doit=true" target="_blank" >http://resizecalc.sourceforge.net/index.p &#8230; ;doit=true</a>

[makethumbwd on linux](/?p=462)