---
published: true
layout: post
date: '2018-08-11 11:34 +0200'
title: maim + xclip
tags:
  - linux
  - cli
---
Select part of a screen with mice and load that screenshot into clipboard

    maim -s /tmp/woot.png && xclip -selection clipboard -t image/png /tmp/woot.png && rm /tmp/woot.png

[https://forums.bunsenlabs.org/viewtopic.php?pid=75345#p75345](https://forums.bunsenlabs.org/viewtopic.php?pid=75345#p75345)
