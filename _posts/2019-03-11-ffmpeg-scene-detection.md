---
published: true
layout: post
date: '2019-03-11 16:29'
title: ffmpeg scene detection
tags: video bash
---
    ffmpeg -i "$1" \
           -filter:v "select='gt(scene,0.4)',showinfo" \
           -f null \
           - 2>&1 | grep pts_time:[0-9.]* | grep [0-9.]*

More complex, but fails badly on dark video ...

    #!/bin/bash

    # scene detection

    # needs: ffmpeg, tee

    # tmp dir http://mywiki.wooledge.org/BashFAQ/062
    tmp="/tmp/$RANDOM-$$"
    trap '[ -n "$tmp" ] && rm -fr "$tmp"' EXIT
    mkdir -m 700 "$tmp" || { echo '!! unable to create a tmpdir' >&2; tmp=; exit 1; }


    while [ $# -gt 0 ]; do

        file=$(readlink -f "$1")
        echo "$file"
        
        ffmpeg -hide_banner -i "$file" -an \
               -filter:v "select='gt(scene\,0.3)',showinfo" \
               -f null \
               - 2>&1 | tee "$tmp/all.txt"
               
        grep showinfo "$tmp/all.txt" | grep pts_time:[0-9.]* -o | grep [0-9.]* -o | tee "$tmp/greped.txt"

        # get fps?
        fps=$(mediainfo --Inform="Video;%FrameRate%" "$file")
        echo "fps=$fps"


    shift
    done 
