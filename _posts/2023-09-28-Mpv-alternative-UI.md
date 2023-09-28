---
published: true
layout: post
date: '2023-09-28 19:07'
title: Mpv alternative UI
tags: video 
---
![scrot](https://i.imgur.com/2ZnJmnU.png)

<https://github.com/tomasklaen/uosc>  
> Feature-rich minimalist proximity-based UI for MPV player.

Maybe add to bundled mpv.conf:

    # mine
    hwdec=auto
    sub-auto=fuzzy
    save-position-on-quit
    autofit-larger=88%
    --af = loudnorm
