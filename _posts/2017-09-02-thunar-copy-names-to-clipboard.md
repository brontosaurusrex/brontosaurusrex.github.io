---
published: true
layout: post
date: '2017-09-02 21:30 +0200'
title: 'Thunar, copy names to clipboard'
tags: cli linux mine
---
In *custom actions* define one with

    echo %N | xclip -selection clipboard
    
and in *apperance conditions* enable everything. Useful but limited. Or

    echo "%N" | xclip -selection clipboard
    
which should return 'filenames with single quotes'.
