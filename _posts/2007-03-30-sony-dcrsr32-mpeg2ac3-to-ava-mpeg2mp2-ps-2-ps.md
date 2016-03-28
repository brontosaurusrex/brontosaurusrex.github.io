---
id: 297
title: '&#8216;sony dcrsr32&#8217; mpeg2(ac3) to ava mpeg2(mp2) &#8211; PS 2 PS'
date: 2007-03-30T19:50:32+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry070330-125032
permalink: /2007/03/sony-dcrsr32-mpeg2ac3-to-ava-mpeg2mp2-ps-2-ps/
categories:
  - video
---
this seems to work with bunch of errors reported:

**`mencoder -ovc copy M2U00004.MPG -o M2U00004_.MPG -oac twolame -of mpeg`**

or to increase twolame bitrate, add:

**`-twolameopts br=384`**
  


* * *edit: errors are like this:

  
`ERROR: scr 27.051, dts 16.360, pts 16.480<br />ERROR: scr 27.055, dts 0.000, pts 16.376<br />ERROR: scr 27.136, dts 0.000, pts 16.400<br />ERROR: scr 27.179, dts 0.000, pts 16.448<br />ERROR: scr 27.221, dts 0.000, pts 16.496<br />ERROR: scr 27.225, dts 16.480, pts 16.600<br />Pos:  16.8s    420f (95%)  0.00fps Trem:   0min  12mb  A-V:0.053 [5717:384]<br />ERROR: scr 27.365, dts 0.000, pts 16.544<br />ERROR: scr 27.459, dts 0.000, pts 16.568<br />ERROR: scr 27.535, dts 0.000, pts 16.616<br />ERROR: scr 27.607, dts 0.000, pts 16.664`

p.s. unrelated: the material is TFF.