---
published: true
layout: post
date: '2019-03-11 16:29'
title: ffmpeg scene detection
tags: video bash
---
    ffmpeg -i "$1" \
           -filter:v "select='gt(scene,0.4)',showinfo" \
           -f null \
           - 2>&1 | grep pts_time:[0-9.]* | grep [0-9.]*
