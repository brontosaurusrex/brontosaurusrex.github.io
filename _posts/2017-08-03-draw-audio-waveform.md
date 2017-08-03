---
published: true
layout: post
date: '2017-08-03 15:36 +0200'
title: draw audio waveform
---
    ffmpeg -i "stretchbang.wav" -lavfi showwavespic=s=4000x2000:colors=000000 waveform.png 
    # then scaledown to around 25%
    
![waveform.png]({{site.baseurl}}/media/waveform.png)

    
