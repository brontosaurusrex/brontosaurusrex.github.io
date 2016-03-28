---
id: 3167
title: tiny radio script
date: 2014-05-02T14:02:06+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3167
permalink: /2014/05/tiny-radio-script/
categories:
  - Uncategorized
---
<http://linuxbbq.org/bbs/viewtopic.php?f=4&t=1168&p=21911&hilit=pidsley+radio#p21911>

(add -b 2000 to mpg123 line to get some buffering)

edit: and a mpv edition (mpv supports more audio formats);

<pre>#!/bin/bash

STREAM_FILE=~/bin/radiolist

[[ ! -f "$STREAM_FILE" ]] && echo "$STREAM_FILE does not exist" && exit 1

array=( $(cat "$STREAM_FILE") )

select opt in "${array[@]}"; do
    [[ $1 =~ ^-r ]] && streamripper "$opt" &
    # mpg123 -b 2000 -@ "$opt"
    mpv --load-unsafe-playlists "$opt" --cache 1000 --msglevel=cplayer=no:ffmpeg/audio=no:ffmpeg/demuxer=no:ffmpeg/video=no:ad=no --no-video
    break
done
</pre>