---
id: 1004
title: canon 7d footage avisynth examples
date: 2010-08-04T09:58:20+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=1004
permalink: /2010/08/canon-7d-footage-avisynth-examples/
categories:
  - Uncategorized
---
<pre lang="avisynth">LoadPlugin("t:utilityavisynthffmpegsourceFFMS2.dll")
a=FFaudioSource("E:brontosaurusrexcanon7d2010_07_31MVI_0170.MOV")
v=FFVideoSource("E:brontosaurusrexcanon7d2010_07_31MVI_0170.MOV")
AudioDub(v, a)</pre>

or

<pre lang="avisynth">LoadPlugin("t:utilityavisynthffmpegsourceFFMS2.dll")
FFVideoSource("D:brontosaurusrexCITYd7MVI_5817.MOV")
assumefps(25)
resize(720,576)
killaudio()</pre>