---
published: true
layout: post
date: '2017-07-31 09:06 +0200'
title: 'openbox, move to next monitor'
tags: linux
---
In .config/openbox/rc.xml

    <!-- move window to next/previous monitor -->
    <keybind key="A-m">
      <action name="MoveResizeTo">
        <monitor>next</monitor>
      </action>
    </keybind>
    
With Alt+m window will move to next monitor.
    
[http://openbox.org/wiki/Help:Actions#MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo)
