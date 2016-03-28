---
id: 3688
title: splice m4b audio book by apple chapters, bash script
date: 2015-01-27T01:02:49+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3688
permalink: /2015/01/splice-m4b-audio-book-by-apple-chapters-bash-script/
categories:
  - Uncategorized
---
<http://crunchbang.org/forums/viewtopic.php?pid=414992#p414992>

`#!/bin/bash</p>
<p># Splice m4b audiobook to mp4 files by chapters<br />
# I need a newer ffmpeg from 2014 at least i guess<br />
# bronto 2015<br />
# Thanks to izabera from freenode.</p>
<p>#     Chapter #0:0: start 0.000000, end 1290.013333<br />
#       first   _     _     start    _     end</p>
<p>while [ $# -gt 0 ]; do</p>
<p>ffmpeg -i "$1" 2> tmp.txt</p>
<p>while read -r first _ _ start _ end; do<br />
  if [[ $first = Chapter ]]; then<br />
    read  # discard line with Metadata:<br />
    read _ _ chapter</p>
<p>    ffmpeg -i "$1" -ss "${start%?}" -to "$end" -acodec copy "$chapter.mp4" </dev/null
  fi
done <tmp.txt

rm tmp.txt


shift
done`