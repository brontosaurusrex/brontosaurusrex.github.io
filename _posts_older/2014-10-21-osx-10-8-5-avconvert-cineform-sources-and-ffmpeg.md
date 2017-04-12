---
id: 3485
title: osx 10.8.5, avconvert, cineform sources and ffmpeg
date: 2014-10-21T22:10:51+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3485
permalink: /2014/10/osx-10-8-5-avconvert-cineform-sources-and-ffmpeg/
categories:
  - Uncategorized
---
<pre>avconvert -prog --preset PresetAppleProRes422LPCM --source cineform.mov --output prores.mov</pre>

could be the intermediate format before the file is dropped to ffmpeg/x264, but it seems to make quicktime unfriendly files &#8230; (ffmpeg does take them thought).