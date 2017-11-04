---
published: true
layout: post
date: '2017-11-04 19:09 +0100'
title: mpv shuffle
---
Short one

    mpv --shuffle *
    # < = prev
    # > = next

Long one

    mpv --no-config --no-video --no-resume-playback --no-ytdl --af=lavfi=[loudnorm=LRA=10:I=-17] --shuffle *