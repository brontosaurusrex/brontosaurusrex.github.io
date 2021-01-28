---
published: true
layout: post
date: '2021-01-28 11:31'
title: MPV, L loops playlist
tags: video mine 
---
In the file input.conf

    l cycle-values loop-file "inf" "no"
    L cycle-values loop-playlist "inf" "no"

Small l will now loop current clip, big L will now loop playlist (behaves as toggle).
