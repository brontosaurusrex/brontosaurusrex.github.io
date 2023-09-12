---
published: true
layout: post
date: '2017-05-17 17:11 +0200'
title: bw to png with transparency
tags: linux cli
---
[https://forums.bunsenlabs.org/viewtopic.php?id=3705](https://forums.bunsenlabs.org/viewtopic.php?id=3705)

    convert in.jpg \
    \( -clone 0 -fill black -colorize 100% \) \
    \( -clone 0 -negate \) \
    -delete 0 -alpha off -compose copy_opacity -composite PNG32:out.png
    # from http://www.imagemagick.org/discourse-server/viewtopic.php?t=21677
