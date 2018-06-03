---
published: true
layout: post
date: '2018-06-03 23:12 +0200'
title: openbox rc.xml application size
tags:
  - linux
---
This

    <application class="Obconf" name="obconf" type="normal">
      <size>
        <width>45%</width>
      </size>
    </application>
    
or longer

    <application class="Obconf" name="obconf" type="normal">
      <size>
        <width>45%</width>
      </size>
      <position force="no">
        <x>center</x>
        <y>center</y>
        <monitor>1</monitor>
      </position>
    </application>
    
[https://forums.bunsenlabs.org/viewtopic.php?pid=72844#p72844](https://forums.bunsenlabs.org/viewtopic.php?pid=72844#p72844)

