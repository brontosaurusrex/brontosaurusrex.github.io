---
published: true
layout: post
date: '2017-08-03 15:36 +0200'
title: draw audio waveform
---
    # this
    ffmpeg -i "stretchbang.wav" -lavfi showwavespic=s=4000x2000:colors=000000 waveform.png 

    # with log scale
    ffmpeg -i "stretchbang.wav" -lavfi showwavespic=scale=log:s=4000x2000:colors=000000 waveformLog.png

    # then scaledown to around 25%

![waveform.png]({{site.baseurl}}/media/waveform.png)

[https://trac.ffmpeg.org/wiki/Waveform](https://trac.ffmpeg.org/wiki/Waveform)
