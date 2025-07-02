---
published: true
layout: post
date: '2025-07-02 07:14'
title: Sixel gradient(s) experiments
tags: misc cli 
---

RYGB

    convert \
    \( -size 1x10 xc:"#f00" \) \
    \( -size 1x200 gradient:"#f00-#ff0" \) \
    \( -size 1x200 gradient:"#ff0-#0f0" \) \
    \( -size 1x200 gradient:"#0f0-#00f" \) \
    \( -size 1x10 xc:"#00f" \) \
    -append -scale 500x500! sixel:

may be continued...
