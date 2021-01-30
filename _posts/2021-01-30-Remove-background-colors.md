---
published: true
layout: post
date: '2021-01-30 23:18'
title: Remove background colors
tags: cli bash 
---
In ~/.zshrc

    # remove background colors
    LS_COLORS=$LS_COLORS:'tw=00;33:ow=01;34:'; export LS_COLOR

Should make directories blue, without background.
