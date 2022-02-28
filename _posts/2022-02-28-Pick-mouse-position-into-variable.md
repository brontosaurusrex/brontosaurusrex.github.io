---
published: true
layout: post
date: '2022-02-28 14:31'
title: Pick mouse position into variable
tags: linux bash 
---
    gpick -p -s -o && eval "$(xdotool getmouselocation --shell)" && echo $X $Y
