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
    or
    .................................::::::...
    or
    ────────────86──
    
## Solution

A bash script like [this](https://raw.githubusercontent.com/brontosaurusrex/postbang/master/bin/printVol), and tint2 config entrie like this (You will want latest tint2 version from git)

    #-------------------------------------
    # E = EXECP
    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = printVol
    execp_interval = 0
    execp_font = cuprum 8
    execp_font_color = #111111 100
    execp_padding = 2 0 2
    #execp_background_id = 0
    #execp_padding = 0 0 50
    execp_mclick_command = gnome-alsamixer
    execp_rclick_command = amixer set Master 5%+
    execp_lclick_command = amixer set Master 5%-
    execp_uwheel_command = amixer set Master 1%+
    execp_dwheel_command = amixer set Master 1%-
    execp_tooltip = master volume
    
and don't forget to add

    panel_items = TSEC
    
under # Panel.

Full tint2rc.printVol example  
[https://github.com/brontosaurusrex/postbang/blob/master/.config/tint2/tint2rc.printVol](https://github.com/brontosaurusrex/postbang/blob/master/.config/tint2/tint2rc.printVol)

### Behaviour

Left of Right mouse click on it in tint2 will raise/lower volume by 5%.  
Mouse scroll up/down will raise/lower volume by 1%.  
Middle mouse click will call external mixer (It will poll/redraw when mixer is closed < good enough).  
It will not redraw if external mixer is called from outside of this little scope.

[https://forums.bunsenlabs.org/viewtopic.php?pid=52826#p52826](https://forums.bunsenlabs.org/viewtopic.php?pid=52826#p52826)

[![printVolumeTint2Slider.th.png](https://cdn.scrot.moe/images/2017/05/31/printVolumeTint2Slider.th.png)](https://cdn.scrot.moe/images/2017/05/31/printVolumeTint2Slider.png)
[![printVol2.th.png](https://cdn.scrot.moe/images/2017/05/31/printVol2.th.png)](https://cdn.scrot.moe/images/2017/05/31/printVol2.png)
