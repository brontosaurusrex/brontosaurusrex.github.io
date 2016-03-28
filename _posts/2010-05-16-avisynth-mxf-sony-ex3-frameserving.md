---
id: 866
title: avisynth mxf (sony ex3) frameserving
date: 2010-05-16T19:26:41+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=866
permalink: /2010/05/avisynth-mxf-sony-ex3-frameserving/
categories:
  - Uncategorized
---
<pre lang="avisynth">LoadPlugin("t:utilityavisynthffmpegsourceFFMS2.dll")

a1 = FFAudioSource("film.avi",1)
a2 = FFAudioSource("film.avi",1)
v = FFVideoSource("film.avi")

#l_ch = GetChannel(a, 1)
#r_ch = GetChannel(a, 2)
stereo = MergeChannels(a1,a2)
audiodub(v, stereo)

resize(720,576)
ResampleAudio(48000)
ConvertAudioTo16bit() 

__END__
</pre>

p.s. there is an audio issue, possibly due to the fact that audio is reported with wrong bitDepth and i have no idea how to fix this (AssumeBitDepth?)&#8230;

p.s.2. audio can be extracted (as 32bit floating point mono wav) with plain ffmpeg like this:
  
`ffmpeg -i file.MXF -acodec copy file.wav`
  
(this will take channel 1 only, while mxf can actually store bunch of audio channels&#8230;)
  
as step2 one could use foobar to make audio 2ch and to get 16bpc.