---
id: 2593
title: fdk-aac vbr encoding with a new static ffmpeg
date: 2013-04-21T21:16:00+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2593
permalink: /2013/04/fdk-aac-vbr-encoding-with-a-new-static-ffmpeg/
categories:
  - Uncategorized
---
`ffmpeg -i input.mp4 -c:v copy -c:a libfdk_aac -vbr 3 output.mp4`