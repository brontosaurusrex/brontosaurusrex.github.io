---
published: true
layout: post
date: '2019-11-03 16:42'
title: Keyboard LEDS
tags: linux 
---
Mkay

    # capslock blink
    xset led on; sleep 1; xset led off
    
Could be by name (Does nothing on kumara)

xset led named "Sleep"  # on
xset -led named "Sleep" # off

Definitions in

    /sys/class/leds
    
xset -q         

    Keyboard Control:
      auto repeat:  on    key click percent:  0    LED mask:  00000000
      XKB indicators:
        00: Caps Lock:   off    01: Num Lock:    off    02: Scroll Lock: off
        03: Compose:     off    04: Kana:        off    05: Sleep:       off
        06: Suspend:     off    07: Mute:        off    08: Misc:        off
        09: Mail:        off    10: Charging:    off    11: Shift Lock:  off
        12: Group 2:     off    13: Mouse Keys:  off

Export current settings to file

    xkbcomp $DISPLAY myconf.xkb


[https://www.kernel.org/doc/html/latest/leds/leds-class.html](https://www.kernel.org/doc/html/latest/leds/leds-class.html)  
[https://dev.to/raymelon/automating-your-keyboards-backlit-with-bash](https://dev.to/raymelon/automating-your-keyboards-backlit-with-bash)  
[https://forums.bunsenlabs.org/viewtopic.php?pid=93206#p93206](https://forums.bunsenlabs.org/viewtopic.php?pid=93206#p93206)
