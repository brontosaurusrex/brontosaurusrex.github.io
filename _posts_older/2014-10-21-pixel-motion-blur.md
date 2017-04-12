---
id: 3478
title: pixel motion blur
date: 2014-10-21T19:12:57+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3478
permalink: /2014/10/pixel-motion-blur/
categories:
  - Uncategorized
---
<http://blogs.adobe.com/aftereffects/2013/06/pixel-motion-blur-effect-new-in-after-effects-cc-12-0.html>

or how to convert 50p to 25p camera footage (in this case this is a gopro3 footage shot at 50p (hd) with unknown shutter speed)

evil plan (after various tests);
  
a. open AE CC, create 50p composition and drop this 50p edit into it (50p in 25p composition did not work that well)
  
&#8211; add pixel motion blur &#8211; with manual shutter control, shutter angle 90, shutter samples 20, vector detail 20
  
&#8211; render out to 50p intermediate (its SLOW, a min seems to need more than an hour)
  
b. convert this with ffmpeg to your prefered final format using something like

<pre>ffmpeg -i in.mov yourcodecsettingshere -r 25 out_25fps.mov</pre>

Note that -r is just brutal droper/duplicator, it does not do any fancy frame blending or such.

observations;
  
&#8211; There is no scene detection in the pixel motion blur (cuts will become slightly dissolvish or wipish some in a good and some in a bad way, but do the effect on source shots, not on master, if possible)
  
&#8211; compression efficiency increases (using x264 crf 18 -tune film)