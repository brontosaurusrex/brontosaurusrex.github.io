---
published: true
layout: post
date: '2017-03-29 10:26 +0200'
title: 'urxvt fullscreen (or anything else), openbox'
tags: mine linux
---
~/bin/fullscreen is a script like

    #!/bin/bash
    # toggle fullscreen, usefull for urxvt. Possibly can be maped to some key in openbox rc.xml.
    
    command -v wmctrl >/dev/null 2>&1 || { >&2 echo "I need wmctrl installed." ; exit 1; }
    
    wmctrl -r :ACTIVE: -b toggle,fullscreen

and in ~/.config/openbox/rc.xml an entrie like

    <!-- fullscreen toggle script -->
        <keybind key="W-F11">
          <action name="Execute">
             <command>fullscreen</command>
          </action>
        </keybind>

will make urxvt toggle into fullscreen mode (or any other app I assume). W-F11 stands for 'super + F11' key combo. Super is sometimes known as Winkey.

Similar  
[stackoverflow/how-to-make-rxvt-start-as-fullscreen](http://stackoverflow.com/questions/9783198/how-to-make-rxvt-start-as-fullscreen)

Openbox workflow  

    ctrl+alt+left/right < will switch desktops 
