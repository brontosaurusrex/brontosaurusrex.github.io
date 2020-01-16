---
published: true
layout: post
date: '2020-01-15 21:43'
title: Mute machine at night
tags: linux 
---
[https://unix.stackexchange.com/questions/170950/how-can-i-automatically-silence-my-computer-at-night](https://unix.stackexchange.com/questions/170950/how-can-i-automatically-silence-my-computer-at-night)

    crontab -e
    
and add

    # Mute sound at night from 1:00 to 6:59
    0 1 * * * amixer set Master mute
    59 6 * * * amixer set Master unmute
