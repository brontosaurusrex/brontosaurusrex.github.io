---
published: true
layout: post
date: '2017-11-04 19:09 +0100'
title: mpv shuffle
tags: video cli bash
---
Short one

    mpv --shuffle *
    # < = prev
    # > = next

Long one

    mpv --no-config --no-video --no-resume-playback --no-ytdl --af=lavfi=[loudnorm=LRA=10:I=-17] --shuffle *
    # alias rndPlay='mpv --no-config --no-video --no-resume-playback --no-ytdl --af=lavfi=[loudnorm=LRA=10:I=-17] --shuffle *'
    
How about video window to be used for some audio visualizations  
[https://bbs.archlinux.org/viewtopic.php?pid=1640982#p1640982](https://bbs.archlinux.org/viewtopic.php?pid=1640982#p1640982)  
Absosmurfly nothing works, but the provided example.
    
Extremly smart version by 'glacial', usable if there was no --shuffle in specific utility

    #!/bin/bash
    # this script is a wrapper around mpv

    # this script requires GNU find with -regextype option
    # and support of egrep regular expressions
    find . -maxdepth 0 -regextype egrep -iregex x || exit

    # this script requires GNU shuf with -z option
    printf '' | shuf -z || exit

    shuffle_audio() {
        find -regextype egrep \
             -iregex '.*\.(mp3|m4a|flac|mpc|ogg|opus)' \
             -print0 | shuf -z
    }

    media=()
    while IFS= read -r -d '' filename; do
        media+=("$filename")
    done < <(shuffle_audio)

    if [[ ${#media[@]} == 0 ]]; then
        echo "no audio files found" >&2
        exit
    fi

    # typical usage of exec in a wrapper script
    exec mpv --no-config --no-video --no-resume-playback \
         --no-ytdl --af='lavfi=[loudnorm=LRA=10:I=-17]' \
         -- "${media[@]}"
