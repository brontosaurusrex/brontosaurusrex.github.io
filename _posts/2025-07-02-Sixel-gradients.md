---
published: true
layout: post
date: '2025-07-02 07:14'
title: Sixel experiments
tags: misc cli 
---

RYGB gradient

    convert \
    \( -size 1x10 xc:"#f00" \) \
    \( -size 1x200 gradient:"#f00-#ff0" \) \
    \( -size 1x200 gradient:"#ff0-#0f0" \) \
    \( -size 1x200 gradient:"#0f0-#00f" \) \
    \( -size 1x10 xc:"#00f" \) \
    -append -scale 500x500! sixel:

Gime me some text

    convert -size 920x180 xc:white -fill black -font Helvetica-Bold -pointsize 162 -gravity center -annotate 0 "Hello, Sixel" sixel:


may be continued...
