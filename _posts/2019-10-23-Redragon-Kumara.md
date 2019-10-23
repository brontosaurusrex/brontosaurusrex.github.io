---
published: true
layout: post
date: '2019-10-23 21:44'
title: Redragon Kumara K552 RGB keyboard
tags: mine
---
## Backlight modes

    x = switch 3 backlight modes
    FN+INS, x, Trial of light, Breathing, Normaly on
    FN+HOME, x, Ripple graff, Pass without trace, Coastal
    FN+PGUP, x, Hurricane, Accumulate, Digital times
    FN+DEL, x, Go with stream, Clouds fly, Winding Paths
    FN+END, x, Flowers, Snow, Swift
    FN+PGDN, x, Both ways, Surmount, Fast and the furious
    
## Keyboard function

    FN+WIN, Lock windows and app function, repeat to unlock
    FN+'-+', 4 level speed adjust
    FN+'<-', adjust backlight running direction
    FN+'->', adjust backlight color, colors switching by circle
    FN+'up','down', 4 level brightness adjustable
    FN+PRTSC, To restore default as flow mode


## Multi-media keys

    FN+F1 = Open media player.
    FN+F2 = Volume down.
    FN+F3 = Volume up.
    FN+F4 = Mute.
    FN+F5 = Stop.
    FN+F6 = Previous track.
    FN+F7 = Play / Pause.
    FN+F8 = Next track.
    FN+F9 = Open mailbox.
    FN+F10 = Open browser homepage.
    FN+F11 = Calculator.
    FN+F12 = Search.

![Kumara](/media/redragon.png)

## First impression

Louder than expected, flashy (can be toned down), slightly higher than expected (would need some sort of hand rest thing), extremely cool looking. Keys are slightly wider than my previous (default macos) keyboard, which will require some adjusting. This works in Linux as expected without any kind of hacking.

## Openbox rc.xml

This inside <keyboard></keyboard>

    <!-- redragon -->
    <keybind key="XF86AudioRaiseVolume">
      <action name="Execute">
        <command>amixer sset Master,0 5+</command>
      </action>
    </keybind>
    <keybind key="XF86AudioLowerVolume">
      <action name="Execute">
        <command>amixer sset Master,0 5-</command>
      </action>
    </keybind>
    <keybind key="XF86AudioMute">
      <action name="Execute">
        <command>amixer sset Master,0 toggle</command>
      </action>
    </keybind>
    <!-- redragon end -->
    
will give some FN+f2/f3/f4 action. 
