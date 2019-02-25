---
published: true
layout: post
date: '2019-02-22 18:56 +0100'
title: tint2 weather executor
tags:
  - linux
---
    #-------------------------------------
    # Executor weather
    execp = new
    execp_command = wget https://wttr.in/?format=4 2>/dev/null -O - | cut -d : -f 2
    execp_interval = 1200
    execp_continuous = 0
    #execp_tooltip = weather
    execp_font = cuprum 12
    execp_font_color = #111111 80
    execp_padding = 0 0
    execp_background_id = 0
    execp_centered = 1
    
![](https://cdn.scrot.moe/images/2019/02/22/weather.png)

Simpler looking version

    execp_command = wget https://wttr.in/?format=3 2>/dev/null -O - | cut -d : -f 2
    
Might return

    ☀️ +5°C

Note: Data/temperature from wttr.in is wrong.
