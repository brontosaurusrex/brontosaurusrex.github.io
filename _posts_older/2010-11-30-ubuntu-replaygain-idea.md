---
id: 1073
title: ubuntu replaygain idea
date: 2010-11-30T15:59:47+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1073
permalink: /2010/11/ubuntu-replaygain-idea/
categories:
  - Uncategorized
---
1. php uploader,
  
allows wav?

2. refuse files longer than 1 minute?

3. encode wav to flac with
  
`flac --replay-gain file.wav`

4. get the rg info and display that on page;
  
`metaflac --list $file | grep REFERENCE | cut -d':' -f2`
  
`metaflac --list $file | grep TRACK_GAIN | cut -d':' -f2`