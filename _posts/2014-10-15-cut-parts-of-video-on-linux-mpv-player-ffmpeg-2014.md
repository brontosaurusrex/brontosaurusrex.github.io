---
published: true
layout: post
date: '2016-11-02 12:05 +0200'
id: 3469
title: cut parts of video on linux (mpv player + ffmpeg)
author: bronto saurus
guid: 'http://b.pwnz.org/?p=3469'
permalink: /2014/10/cut-parts-of-video-on-linux-mpv-player-ffmpeg-2014/
categories:
  - Uncategorized
---
a. use mpv to locate the cut points;

    mpv --keep-open input.mov # --osd-fractions seems to be useless in 2016 versions

To copy current video position to clipboard add

    Meta+c run "/bin/sh" "-c" "/bin/echo -n ${time-pos/full} | xsel --clipboard --input"

(Debian wheezy)
  
to .mpv/input.conf and then use Meta (Thats usually win-key to copy).

or on osx that would be (Meta key is cmd in that case)

    Meta+c run "/bin/sh" "-c" "/bin/echo -n ${time-pos/full} | pbcopy"

btw: Use , and . to move frame by frame.

b. use ffmpeg to cut the video

    ffmpeg -i input.mov -ss 00:01:45.480 -to 00:01:46.606 -codec copy part.mov
    # -codec copy should copy all streams without reencoding, or replace
    # that with your video/audio encoder of choice

slightly related:  
<http://crunchbang.org/forums/viewtopic.php?pid=399702#p399702>
