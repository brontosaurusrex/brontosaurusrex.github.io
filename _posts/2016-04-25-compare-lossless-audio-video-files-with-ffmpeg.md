---
published: true
layout: post
date: "2016-04-25 19:18 +0200"
title: "compare lossless audio (video?) files with ffmpeg"
---
with [-f md5](http://ffmpeg.org/ffmpeg-all.html#md5-1)

    orig=$(ffmpeg -i some.wav -loglevel warning -f md5 -)
    echo "$orig"
    flac=$(ffmpeg -i some.flac -loglevel warning -f md5 -)
    echo "$flac"
    [ "$orig" == "$flac" ] && echo "fine" || echo "nope"
    
or a [oneliner](https://hydrogenaud.io/index.php/topic,111753.msg921119.html#msg921119).
