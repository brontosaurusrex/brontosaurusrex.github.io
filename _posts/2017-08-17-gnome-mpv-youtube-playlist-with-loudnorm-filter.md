---
published: true
layout: post
date: '2017-08-17 23:13 +0200'
title: 'mpv, youtube playlist with loudnorm filter'
---
Deconstruct the url removing video entrie, just leave the playlist, like:

    vid="https://www.youtube.com/watch?list=TLGGSbh30LpvVuoxODA4MjAxNw"
    mpv --af=lavfi=[loudnorm] "$vid"
    # or position top-right at max 50% width or may 50% height
    mpv --af=lavfi=[loudnorm] --geometry=100%:0% --autofit=50%x50% "$vid"
    
This

    F3 script-message osc-playlist 5
    
in ~/.config/mpv/input.conf will show playlist for 5 seconds on F3 (mpv 0.26).
