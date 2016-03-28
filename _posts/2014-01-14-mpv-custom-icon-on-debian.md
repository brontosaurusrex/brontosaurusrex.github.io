---
id: 2932
title: mpv custom icon on Debian
date: 2014-01-14T14:19:39+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2932
permalink: /2014/01/mpv-custom-icon-on-debian/
categories:
  - Uncategorized
---
in /usr/share/applications make a file named mpv.desktop with following features;

<pre>[Desktop Entry]
Encoding=UTF-8
Type=Application
Exec=~/bin/mpv %F
Name=play
Icon=play
</pre>

& your icon theme must have that play.png or similar.