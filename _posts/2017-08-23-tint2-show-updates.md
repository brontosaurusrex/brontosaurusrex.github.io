---
published: true
layout: post
date: '2017-08-23 20:06 +0200'
title: tint2 show updates
---
in tint2rc

    #-------------------------------------
    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = apt list --upgradable | expr $(wc -l) - 1
    execp_interval = 3600
    execp_font = cuprum 12
    execp_font_color = #111111 100
    execp_padding = 0 0 0
    execp_tooltip = updates
    execp_lclick_command = x-terminal-emulator -e /bin/bash -c "sudo apt update && sudo apt dist-upgrade && sleep 5"
    
show nothing if there is no updates
    
	execp_command = num=$(apt list --upgradable | expr $(wc -l) - 1); if [ $num != 0 ]; then echo "$num"; fi    
    
[https://forums.bunsenlabs.org/viewtopic.php?pid=59016#p59016](https://forums.bunsenlabs.org/viewtopic.php?pid=59016#p59016)  
[https://gitlab.com/o9000/tint2/blob/master/doc/tint2.md#executor](https://gitlab.com/o9000/tint2/blob/master/doc/tint2.md#executor)

Yeah, that *apt list* didn't work for some reason, back to aptitude

    execp_command = num=$(aptitude search "~U" | wc -l); if [ $num != 0 ]; then echo "$num"; fi
    
Full thing including tint2 restart

    #-------------------------------------
    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = num=$(aptitude search "~U" | wc -l); if [ $num != 0 ]; then echo "$num"; fi
    execp_interval = 3600
    execp_font = cuprum 13
    execp_font_color = #111111 100
    execp_padding = 0 0 0
    execp_tooltip = updates
    execp_lclick_command = urxvt -e bash -c "sudo apt update && sudo apt dist-upgrade && killall -SIGUSR1 tint2 && sleep 5"
