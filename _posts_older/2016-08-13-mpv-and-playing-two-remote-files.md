---
published: true
layout: post
date: '2016-08-13 13:18 +0200'
title: mpv and playing two remote files?
---

    (mpv -start 97 https://dl.dropboxusercontent.com/u/94597638/slitherProProb.mp4 -fs && killall mpv) & sleep 5 && mpv --ytdl-format=140 https://www.youtube.com/watch?v=YknlWO9Lqvc&list=RDYknlWO9Lqvc#t=9

Is there a way to make this a singular mpv command?

This

    mpv -fs https://dl.dropboxusercontent.com/u/94597638/slitherProProb.mp4 --audio-file="$(youtube-dl -f 140 -g https://www.youtube.com/watch?v=YknlWO9Lqvc)"
    
will play both (youtube-dl used for resolving url), but -start command will start both track delayed. And  

    --audio-delay=<sec> 
    
is not working as expected.

Playing with fps to force video to be shorter and limiting the length 

    mpv -fps 100 --no-correct-pts --length 180 -fs https://dl.dropboxusercontent.com/u/94597638/slitherProProb.mp4 --audio-file="$(youtube-dl -f 140 -g https://www.youtube.com/watch?v=YknlWO9Lqvc)"
