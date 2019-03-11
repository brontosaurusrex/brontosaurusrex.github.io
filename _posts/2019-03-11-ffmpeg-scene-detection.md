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
    
Even more complex version (detection is the same), that will produce a lil timeline/stats like

    /media/b/data/trailers/Captain.mkv timeline
    ||------------|----|-----|----|----|||||||||||||||----|-|--|--|-|-||||||||||||||---|----|--|-|-|-|||-|---|--|---|--|-|-|-|-|||||||||-|-|-||-----|-|-|--|-|-|-|--|-||||---|-||-|||-||-|-|-||||-|--|--||--||||
    average clip length: 1.06221 seconds
    103 clips, 1 min 56 s 641 ms

[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/sceneDetection](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/sceneDetection)
