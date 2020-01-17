---
published: true
layout: post
date: '2020-01-17 14:31'
title: Encode Array ?
tags: bash 
---
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
