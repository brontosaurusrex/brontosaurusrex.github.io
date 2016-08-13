---
id: 692
title: 'incite1, smoke2 > avisynth'
date: 2010-03-09T08:58:38+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=692
permalink: /2010/03/incite-avisynth/
categories:
  - Uncategorized
---
incite1

<pre lang="avisynth" line="1">LoadPlugin("t:utilityavisynthffmpegsourceFFMS2.dll")

#LoadCPlugin("t:utilityavisynthyadifyadif.dll")
LoadPlugin("t:utilityavisynthffmpegsourceFFMS2.dll")
v = FFVideoSource("film.avi")
#track 1 = stereo wav audio
a12 = wavsource("film.a1.wav")
#track 3 and 4, mono wav files
a3 = wavsource("film.a3.wav")
a4 = wavsource("film.a4.wav")
a34 = monotostereo(a3, a4)

#mix those to stereo out
mix = mixaudio(a12,a34)
audiodub(v,mix)

#remove letterbox
Crop(0,74,-0,-74) # 720x428(-4px)
LanczosResize(576,320) # (modw16,modh16)</pre>

smoke2

<pre lang="avisynth" line="1">LoadCPlugin("t:utilityavisynthyadifyadif.dll")

a = coronaSequence("D:!tmpfile.*.jpg", sort=1) 
b = wavsource("d:!tmpfile.wav")

audiodub(a,b)

converttoyv12()
yadif(mode=0)

#remove letterbox
Crop(0,74,-0,-74) # 720x428(-4px)
LanczosResize(576,320) # (modw16,modh16)</pre>