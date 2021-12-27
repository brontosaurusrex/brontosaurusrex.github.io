---
published: true
layout: post
date: 2015-01-27T01:02:49.000Z
id: 3688
title: 'splice m4b audio book by apple chapters, bash script'
author: bronto saurus
guid: 'http://b.pwnz.org/?p=3688'
permalink: /2015/01/splice-m4b-audio-book-by-apple-chapters-bash-script/
categories:
  - Uncategorized
---
<http://crunchbang.org/forums/viewtopic.php?pid=414992#p414992>

    #!/bin/bash
    # Splice m4b audiobook to mp4 files by chapters
    # I need a newer ffmpeg from 2014 at least i guess
    # bronto 2015
    # Thanks to izabera from freenode.
    #     Chapter #0:0: start 0.000000, end 1290.013333
    #       first   _     _     start    _     end
    while [ $# -gt 0 ]; do
    ffmpeg -i "$1" 2> tmp.txt
    while read -r first _ _ start _ end; do
      if [[ $first = Chapter ]]; then
        read  # discard line with Metadata:
        read _ _ chapter
        ffmpeg -i "$1" -ss "${start%?}" -to "$end" -acodec copy "$chapter.mp4" </dev/null
      fi
    done <tmp.txt

    rm tmp.txt


    shift
    done
