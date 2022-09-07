---
published: true
layout: post
date: '2022-09-07 14:20'
title: DAR to VAR, bash
tags: bash video mine
---
Shocking facts: 1440x1080 and 1920x1080 videos may both be marked with DAR=16:9, so to ge the DAR from input video:

With ffprobe

    file="20220721.mxf"
    ffprobe="$(ffprobe -i $file 2>&1 | grep DAR | head -1)"
    echo "ffprobe $ffprobe"

    DAR="${ffprobe#*DAR }"
    DAR="${DAR%]*}"
    DAR="${DAR#* }"
    echo; echo "$DAR"

    DAR="${DAR//://}"
    DAR="$(bc -l <<< "$DAR")"
    echo "$DAR"

With mediainfo

    file="20220721.mxf"
    DAR="$(mediainfo --Inform="Video;%DisplayAspectRatio%" "$file")"
    echo "$DAR" 

If DAR comes out as 1.7777 (16:9), and my new wanted width is 1000px, then height would be

    height = width / DAR
    height = 1000 / 1.7777
    height = 562.5 = 563 px
