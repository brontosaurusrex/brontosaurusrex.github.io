---
published: true
layout: post
date: '2020-01-17 14:31'
title: Encode Array
tags: bash 
---
Irc this is called *array expansion*.

## one, bad

    encode() {

        encarr=(ffmpeg)
        encarr+=(-i "$file")
        encarr+=(-vf yadif=0) # deinterlace
        encarr+=(-pix_fmt yuv420p)
        encarr+=(-c:v libx264)
        encarr+=(-preset slow)
        encarr+=(-tune film)
        encarr+=(-crf 18)
        encarr+=(-threads 0)
        encarr+=(-an)
        #encarr+=(-aspect 16:9)
        #encarr+=(-level 4.1)
        encarr+=("$tmpdir/$base.video.mp4")
        encarr+=(-movflags +faststart -loglevel panic -stats)

        echo "${encarr[@]}"

        when=$(date +%Y%m%d%H%M%S)
        FFREPORT=file="$log/$baseext.$when.$RANDOM.$me.log":level=40 \
        "${encarr[@]}" </dev/null

    }

## test

    #!/bin/bash

    encode() {

        input="$HOME/tmp/t e s t.mp4"
        output="$HOME/tmp/out.mp4"

        encarr=("ffmpeg")
        encarr+=("-i ${input}")
        encarr+=("-vf yadif=0") # deinterlace
        encarr+=("-pix_fmt yuv420p")
        encarr+=("-c:v libx264")
        encarr+=("-preset slow")
        encarr+=("-tune film")
        encarr+=("-crf 18")
        encarr+=("-threads 0")
        encarr+=("-an")
        #encarr+=("-aspect 16:9")
        #encarr+=("-level 4.1")
        encarr+=("${output}")
        encarr+=("-movflags +faststart -loglevel panic -stats")

        # preview
        for i in "${!encarr[@]}"; do 
            printf "%s\t%s\n" "$i" "${encarr[$i]}"
        done
            
        # action
        ${encarr[@]}

    }
    encode

## two, fails with filenames with spaces, omg

    encode() {

        encarr=("ffmpeg")
        encarr+=("-i ${file}")
        encarr+=("-vf yadif=0") # deinterlace
        encarr+=("-pix_fmt yuv420p")
        encarr+=("-c:v libx264")
        encarr+=("-preset slow")
        encarr+=("-tune film")
        encarr+=("-crf 18")
        encarr+=("-threads 0")
        encarr+=("-an")
        #encarr+=("-aspect 16:9")
        #encarr+=("-level 4.1")
        encarr+=("${tmpdir/$base.video.mp4}")
        encarr+=("-movflags +faststart -loglevel panic -stats")
            
        when=$(date +%Y%m%d%H%M%S)
        FFREPORT=file="$log/$baseext.$when.$RANDOM.$me.log":level=40 \
        ${encarr[@]} </dev/null

    }

Note that quoted *${encarr[@]}* doesn't expand as expected.

## test 2, this is working, but human-ugly

    #!/bin/bash

    encode() {

        input="$HOME/tmp/t e s t.mp4"
        output="$HOME/tmp/out.mp4"

        encarr=(ffmpeg)
        encarr+=(-i)
        encarr+=("${input}")
        encarr+=(-vf yadif=0)
        encarr+=(-pix_fmt yuv420p)
        encarr+=(-c:v libx264)
        encarr+=(-preset slow)
        encarr+=(-tune film)
        encarr+=(-crf 18)
        encarr+=(-threads 0)
        encarr+=(-an)
        #encarr+=(-aspect 16:9)
        #encarr+=(-level 4.1)
        encarr+=(${output})
        encarr+=(-movflags +faststart -loglevel panic -stats)

        # preview
        for i in "${!encarr[@]}"; do 
            printf "%s\t%s\n" "$i" "${encarr[$i]}"
        done
            
        # action
        "${encarr[@]}"

    }
    encode
