---
published: true
layout: post
date: '2017-01-17 17:55 +0100'
title: ffmpeg extract multiple audio tracks
tags: cli video audio
---
    ffmpeg -i input.mxf -map 0:a:0 -c copy ~/output/a1.wav -map 0:a:1 -c copy ~/output/a2.wav -map 0:a:2 -c copy ~/output/a3.wav -map 0:a:3 -c copy ~/output/a4.wav
    
will take first 4 audio tracks in that mxf and "copy" them to some new wav files. Interesting part here is 0:a:0 which is actually track with id 1, asuming first audio track is always 0:a:0 it should be easier to parse with some bash script, just counting audio tracks perhaps (number of loops or something).

    # list audio channels
    ffprobe file.mxf 2>&1 | grep Audio
        Stream #0:1: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:2: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:3: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:4: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:5: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:6: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:7: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
        Stream #0:8: Audio: pcm_s24le, 48000 Hz, 1 channels, s32 (24 bit), 1152 kb/s
    
    # count audio channels
    ffprobe file.mxf 2>&1 | grep Audio | wc -l #
    8
    
    # p.s. mediainfo only lists 7 channels for some reason

