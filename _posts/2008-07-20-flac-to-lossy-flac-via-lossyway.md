---
id: 115
title: flac to lossy flac (via lossyway)
date: 2008-07-20T20:56:27+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/glob/index.php?entry=entry080720-135627
permalink: /2008/07/flac-to-lossy-flac-via-lossyway/
categories:
  - audio, software
---
flac -d thisflac.flac &#8211;stdout &#8211;silent|lossywav &#8211; &#8211;stdout|flac &#8211; -b 512 -othisflac.lossy.flac &#8211;silent