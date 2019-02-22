---
published: true
layout: post
date: '2019-02-22 18:55 +0100'
title: tint2 weather executor
---
    #-------------------------------------
    # Executor weather
    execp = new
    execp_command = wget http://wttr.in/?format=4 2>/dev/null -O - | cut -d : -f 2
    execp_interval = 1200
    execp_continuous = 0
    execp_tooltip = weather
    execp_font = cuprum 12
    execp_font_color = #111111 80
    execp_padding = 0 0
    execp_background_id = 0
    execp_centered = 1