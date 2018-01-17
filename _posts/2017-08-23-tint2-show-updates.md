---
published: true
layout: post
date: '2017-08-23 20:06 +0200'
title: tint2 show updates
tags: cli bash linux
---
## interval - quasi solution

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
    
Full thing including tint2 restart (killall -SIGUSR1 tint2 # < should restart tint2)

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
    
^behavior should be
- never show nothing if there is no aptitude in system
- show nothing if there are no updates
- show number of updates if there are some
- on lclick run update && reload tint2 (reloading the execp_command as well)

## continuous - possibly real deal

a script called [aptSpy](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/aptSpy)

and in tint2

    execp = new
    execp_centered = 0
    execp_has_icon = 0
    execp_command = aptSpy
    execp_continuous = 1
    execp_font = cuprum 13
    execp_font_color = #111111 100
    execp_padding = 0 0 0
    execp_tooltip = updates
    execp_lclick_command = urxvt -e bash -c "sudo apt update && sudo apt dist-upgrade && sleep 5"
    
[http://aptitude.alioth.debian.org/doc/en/ch02s04s05.html#searchUpgradable](http://aptitude.alioth.debian.org/doc/en/ch02s04s05.html#searchUpgradable)  
Note that *aptitude search "~U"* will also return upgradable packages breaking that invisible stable > backports barrier.

edit: Not really working, possible real 'solution' would be a combo with unattended-upgrades (set to get upgrades, but not install them) and apt-listchanges. Also script should fire at the end of upgrade (I don't think it does correctly now). Best way imho is still to do nothing and let user do it when if feels like.
