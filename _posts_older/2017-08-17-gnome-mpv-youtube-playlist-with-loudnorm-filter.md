---
published: true
layout: post
date: '2017-08-17 23:13 +0200'
title: 'mpv, youtube playlist with loudnorm filter'
tags: video audio cli
---
Deconstruct the url removing video entrie, just leave the playlist, like:

    vid="https://www.youtube.com/watch?list=TLGGSbh30LpvVuoxODA4MjAxNw"
    mpv --af=lavfi=[loudnorm] "$vid"
    # or position top-right at max 50% width or may 50% height
    mpv --af=lavfi=[loudnorm] --geometry=100%:0% --autofit=50%x50% "$vid"
    
This

    F3 script-message osc-playlist 5
    
in ~/.config/mpv/input.conf will show playlist for 5 seconds on F3 (mpv 0.26).

p.s. With **shift+drag** it is also possible to populate playlist. In youtube case that does work video by video, but NOT playlist by playlist, actually if you drag playlist directly without removing the v= part it will only play that specific video. Now with that F3^ in place and in video by video option, osd will show urls and not names for some reason (it does work as expected with playlist = shows names). Still, shift+drag is the bomb.

[https://github.com/mpv-player/mpv/issues/4780](https://github.com/mpv-player/mpv/issues/4780)

## a script?

[https://superuser.com/questions/603586/sed-extracting-value-of-a-key-value-pair-in-a-url-query-string](https://superuser.com/questions/603586/sed-extracting-value-of-a-key-value-pair-in-a-url-query-string)

    #!/bin/bash

    # youtubeMpvList

    # usage
    # youtubeMpvList "youtubeurl" # < yes, you will need quotes.

    url="$1"

    list=$(echo "$url" | \
    sed -E 's@https?://(www\.)?youtube.com/(watch\?).*list=([-_a-zA-Z0-9]*).*@\3@')

    if [ -z ${list+x} ]; then # if list is empty just ee the url

        new="$url"

    else # list is not empty, lets construct the new youtube url

        pre="https://www.youtube.com/watch?list="
        new="$pre$list"

    fi

    echo "$new"

    mpv --af=lavfi=[loudnorm] --geometry=100%:0% --autofit=50%x50% "$new"

## summary with ffmpeg
 
     ffmpeg -i audio.m4a -af loudnorm=print_format=summary -f null -
