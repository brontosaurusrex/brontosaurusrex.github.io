---
published: true
layout: post
date: '2022-10-03 13:13'
title: Crop Detection
tags: video mine 
---
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

Idea: Jump to the middle of the movie, scan just 5 seconds and be happy.
Maybe better: Speed up (or skip frames) the film to be only 5 seconds long and detect that.
