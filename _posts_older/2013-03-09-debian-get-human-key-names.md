---
id: 2483
title: debian, get human key names
date: 2013-03-09T19:39:06+00:00
author: bronto saurus
layout: post
guid: http://blog.kravca.mu/?p=2483
permalink: /2013/03/debian-get-human-key-names/
ppw:
  - no_photo
categories:
  - Uncategorized
---
in cli

<pre>xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'
</pre>

then start pressing things.

<pre>133 Super_L
134 Super_R
135 Menu
105 Control_R
108 ISO_Level3_Shift
37 Control_L
133 Super_L
64 Alt_L
</pre>