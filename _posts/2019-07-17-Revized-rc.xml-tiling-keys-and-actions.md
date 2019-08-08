---
published: true
layout: post
date: '2019-07-17 22:50'
title: Revised Openbox rc.xml tiling keys and actions
tags: linux mine 
---
    <!-- brontosaurusrex start -->
    <!-- ALT + y, x, c, v -->
    
    <!-- left side -->
    <keybind key="A-z">
      <action name="UnmaximizeFull"/>
      <action name="Maximize">
        <direction>vertical</direction>
      </action>
      <action name="MoveResizeTo">
        <x>0%</x>
        <y>0</y>
        <width>50%</width>
        <!-- <height>98%</height> -->
      </action>
    </keybind>
    <!-- right side -->
    <keybind key="A-x">
      <action name="UnmaximizeFull"/>
      <action name="Maximize">
        <direction>vertical</direction>
      </action>
      <action name="MoveResizeTo">
        <x>50%</x>
        <y>0</y>
        <width>50%</width>
        <!-- <height>98%</height> -->
      </action>
    </keybind>
    <!-- just center x -->
    <keybind key="A-c">
      <!-- <action name="UnmaximizeFull"/> -->
      <action name="MoveResizeTo">
        <x>center</x>
      </action>
    </keybind>
    <!-- just center y (alt + win + c) -->
    <keybind key="W-A-c">
      <!-- <action name="UnmaximizeFull"/> -->
      <action name="MoveResizeTo">
        <y>center</y>
      </action>
    </keybind>
    <!-- maximize -->
    <keybind key="A-v">
      <action name="Maximize"/>
    </keybind>
    <!-- fullscreen toggle -->
    <keybind key="W-F11">
      <action name="Execute">
        <command>wmctrl -r :ACTIVE: -b toggle,fullscreen</command>
      </action>
    </keybind>
    <!-- move window to next monitor -->
    <keybind key="A-m">
      <action name="MoveResizeTo">
        <monitor>next</monitor>
      </action>
    </keybind>
    <!-- brontosaurusrex end -->
    
### Hotkeys (assuming querty keyboard)

    alt +
    z = 50% left
    x = 50% right
    c = center x
    v = maximize
    m = move to next monitor
    
    alt + win +
    c = center y
    
    win +
    F11 = force full-screen toggle
    
### Misc

Openbox desktop margins are set to 

    top     0
    left    6
    right   6
    bottom 46 # due to wbar
