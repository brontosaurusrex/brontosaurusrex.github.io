---
published: true
layout: post
date: '2022-09-07 14:20'
title: DAR to VAR, bash
tags: bash video mine
---
Shocking facts: 1440x1080 and 1920x1080 videos may both be marked with DAR=16:9. 
To get the DAR from input video for purposes of calculating output resizing with 'square' pixels:

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
    # or perhaps round to neareast even number, so 562

Rounding to nearest even number, python maybe

    import math
    def woot(num):
        return math.ceil(num / 2) * 2
    
    print(woot(562.5))
    564 # really?
    print(woot(563))
    564
    print(woot(561))
    562

Some bc and awk (better and returns 'correct' results)

    awk_round () {
        awk 'BEGIN{printf "%."'$1'"f\n", "'$2'"}'
    }
    even () {
        local numr tmp
        numr="$1"
        tmp="$(echo "($numr) / 2" | bc -l)"
        tmp="$(awk_round 0 "$tmp")"
        tmp="$(( tmp * 2 ))"
        echo "$tmp"
    }

    even "562.5"
    562
    even "562.6"
    562
    even "562.9"
    562
    even "563"
    564
    even "563.3"
    564
    even "563.9"
    564