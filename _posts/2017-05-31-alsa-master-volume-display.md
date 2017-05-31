---
published: true
layout: post
date: '2017-05-31 12:05 +0200'
title: alsa master volume display
---
    awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)
    # or without the percentage sign
    awk -F"[^0-9]*" '/dB/ { print $3 }' <(amixer sget Master)
    
[https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line](https://unix.stackexchange.com/questions/89571/how-to-get-volume-level-from-the-command-line)

Wanted

    --------------|---
    or
    ---------+---
    or
    ────────────│──
    
## Solution

A bash script like [this](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/bin/printVol), and tint2 config entrie like this

    #-------------------------------------
    # E = EXECP
    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = printVol
    execp_interval = 2
    execp_font = cuprum 11
    execp_font_color = #111111 100
    execp_padding = 2 0 2
    #execp_background_id = 0
    #execp_padding = 0 0 50
    execp_rclick_command = amixer set Master 10%+
    execp_lclick_command = amixer set Master 10%-
    execp_tooltip = Volume
    
and don't forget to add

    panel_items = TSEC
    
under # Panel.


