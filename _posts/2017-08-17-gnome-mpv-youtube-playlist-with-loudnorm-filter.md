---
published: true
layout: post
date: '2017-08-17 23:13 +0200'
title: 'mpv, youtube playlist with loudnorm filter'
---
Deconstruct the url removing video entrie, just leave the playlist, like:

    stuff="https://www.youtube.com/watch?list=TLGGSbh30LpvVuoxODA4MjAxNw"
    mpv --af=lavfi=[lodnorm] "$stuff"
    

    

