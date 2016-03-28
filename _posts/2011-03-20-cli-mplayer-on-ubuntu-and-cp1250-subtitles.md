---
id: 1326
title: cli mplayer on ubuntu and cp1250 subtitles
date: 2011-03-20T20:58:11+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1326
permalink: /2011/03/cli-mplayer-on-ubuntu-and-cp1250-subtitles/
categories:
  - Uncategorized
---
the solution seems to be a two step process:

1. convert cp1250 to unicode, maybe with a script like (compatible with nautilus script folder):

_iconv\_cp1250\_to_utf8_

<pre lang="bash">#!/bin/bash

while [ $# -gt 0 ]; do
	
file=$1
filename=${file%.*}
extension=${file##*.}

iconv $1 -o $filename_utf8.srt --from-code=cp1250 --to-code=utf8

shift
done

# primer
#  iconv subtitle1250.srt -o unicode.srt --from-code=cp1250 --to-code=utf8</pre>

2. make sure that your _~/.mplayer/config_ has:

<pre lang="bash"># Set font encoding.
subfont-encoding=unicode

# Set subtitle file encoding.
unicode=yes
utf8=yes</pre>