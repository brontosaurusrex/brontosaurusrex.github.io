---
published: true
layout: post
date: '2022-09-07 14:20'
title: DAR to VAR, bash
tags: bash video 
---
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