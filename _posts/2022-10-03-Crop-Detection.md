---
published: true
layout: post
date: '2022-10-03 13:13'
title: Crop Detection
tags: video mine 
---
Idea1: Jump to the middle of the movie, scan just 5 seconds and be happy.

    # movie duration/2 for crop detection
    dur=$(ffprobe -v panic -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$1")
    halfdur=$(bc <<< "$dur / 2.00")
    howlong=$(bc <<< "$halfdur + 5") # seconds
    # crop detection
    crop="$(ffmpeg -ss "$halfdur" -to "$howlong" -i "$1" -vf cropdetect -f null - 2>&1 | awk '/crop/ { print $NF }' | tail -1)"
    if [ -z "$crop" ]; then
        echo "Crop detection failed, exiting..."
        exit 1
    fi
    
    echo "$crop"

Idea2: Speed up (or skip frames) the film to be only 5 seconds long and detect that. After some experimentos this seems to be much slower, since it has to read lots of data.

test:

    ffmpeg -t 1 -r 10000 -i huge.mxf -r 25 -an small.mp4

Will produce small.mp4 with length of 1s and 25fps (Inredibly speed-up huge.mxf), this could be used as a basis for crop detection.