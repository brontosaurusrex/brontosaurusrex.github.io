---
published: true
layout: post
date: '2017-08-23 20:06 +0200'
title: tint2 show updates
---
in tint2rc

    #-------------------------------------
    # E = EXECP
    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = aptitude search "~U" | wc -l
    execp_interval = 3600
    execp_font = cuprum 13
    execp_font_color = #111111 100
    execp_padding = 0 0 0
    execp_tooltip = updates
    execp_lclick_command = urxvt -e bash -c "sudo apt update && sudo apt dist-upgrade && sleep 5"
    
[https://forums.bunsenlabs.org/viewtopic.php?pid=59016#p59016](https://forums.bunsenlabs.org/viewtopic.php?pid=59016#p59016)

Possible aptitude replacement

    apt list --upgradable
