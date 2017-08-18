---
published: true
layout: post
date: '2017-08-17 23:13 +0200'
title: 'mpv, youtube playlist with loudnorm filter'
---
Deconstruct the url removing video entrie, just leave the playlist, like:

    video="https://www.youtube.com/watch?list=TLGGSbh30LpvVuoxODA4MjAxNw"
    mpv --af=lavfi=[loudnorm] "$video"
    # or position top-right at 50% width
    mpv --af=lavfi=[loudnorm] --geometry=100%:0% --autofit=50% "$video"
    

    

