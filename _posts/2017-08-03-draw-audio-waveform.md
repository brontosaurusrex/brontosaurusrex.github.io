---
published: true
layout: post
date: '2017-08-03 15:36 +0200'
title: draw audio waveform
tags: audio cli
---
    # get some audio
    flite -voice slt -t "stretchbang" -o stretchbang.wav
    # and convert to pretty picture
    ffmpeg -i "stretchbang.wav" -lavfi showwavespic=s=4000x2000:colors=000000 waveform.png 
    # then downscale to around 25%
    
    # or with log scale
    ffmpeg -i "stretchbang.wav" -lavfi showwavespic=scale=log:s=4000x2000:colors=000000 waveformLog.png

![waveform.png]({{site.baseurl}}/media/waveform.png)

[https://trac.ffmpeg.org/wiki/Waveform](https://trac.ffmpeg.org/wiki/Waveform)  

If it's not a mono file  
[https://stackoverflow.com/questions/40092006/ffmpeg-waveform-with-specific-color](https://stackoverflow.com/questions/40092006/ffmpeg-waveform-with-specific-color)

    ffmpeg -i "stretchbang.wav" -filter_complex \
    "aformat=channel_layouts=mono,showwavespic=s=4000x2000:colors=#ad9557" waveform.png
