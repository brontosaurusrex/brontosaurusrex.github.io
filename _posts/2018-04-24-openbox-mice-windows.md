---
published: true
layout: post
date: '2018-04-24 22:23 +0200'
title: Openbox mice windows
tags:
  - linux
  - mine
---
Submenu _pos_ in _menu.xml_

    <separator/>
    <menu id="root-menu-0572" label="pos">
        <item label="left">
            <action name="Execute">
                <execute>xdotool key alt+z</execute>
            </action>
        </item>
        <item label="right">
            <action name="Execute">
                <execute>xdotool key alt+x</execute>
            </action>
        </item>
        <item label="center">
            <action name="Execute">
                <execute>xdotool key alt+c</execute>
            </action>
        </item>
        <item label="show desktop">
            <action name="ToggleShowDesktop"/>
        </item>
    </menu>
    
and something like this in _rc.xml_

    <!-- left side -->
    <keybind key="A-z">
      <action name="UnmaximizeFull"/>
      <action name="MoveResizeTo">
        <x>0%</x>
        <y>0</y>
        <width>50%</width>
        <height>98%</height>
      </action>
    </keybind>
    <!-- right side -->
    <keybind key="A-x">
      <action name="UnmaximizeFull"/>
      <action name="MoveResizeTo">
        <x>50%</x>
        <y>0</y>
        <width>50%</width>
        <height>98%</height>
      </action>
    </keybind>
    <!-- just center x -->
    <keybind key="A-c">
      <action name="UnmaximizeFull"/>
      <action name="MoveResizeTo">
        <x>center</x>
      </action>
    </keybind>
    <!-- center x and y -->
    <keybind key="W-A-c">
      <action name="UnmaximizeFull"/>
      <action name="MoveResizeTo">
        <x>center</x>
        <y>center</y>
      </action>
    </keybind>

![scrot30863pos-fs8.png]({{site.baseurl}}/media/scrot30863pos-fs8.png)