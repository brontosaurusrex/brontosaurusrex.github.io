---
id: 1970
title: sox 2x mono to stereo
date: 2011-12-11T14:37:57+00:00
author: bronto saurus
layout: post
guid: http://brontosaurusrex.69.mu/?p=1970
permalink: /2011/12/sox-2x-mono-to-stereo/
categories:
  - Uncategorized
---
https://www.nesono.com/node/275

The following command merges the two mono files into one stereo WAV file (order: left, right):

`sox -M input.l.wav input.r.wav output.wav`

not tested