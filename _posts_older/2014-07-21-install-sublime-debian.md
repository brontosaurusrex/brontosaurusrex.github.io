---
id: 3309
title: '&#8220;Install&#8221; sublime, debian'
date: 2014-07-21T14:01:34+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3309
permalink: /2014/07/install-sublime-debian/
categories:
  - Uncategorized
---
/usr/share/applications/sublime_text.desktop 

<pre>[Desktop Entry]
Version=1.0
Name=sublime
GenericName=Text Editor
Exec=sublime
Terminal=false
Icon=sublime
Type=Application
Categories=TextEditor;IDE;Development</pre>

/usr/bin/sublime

<pre>export sublime_home="/home/b/apps/sublime"
$sublime_home/sublime_text "$*"</pre>

sudo chmod 755 /usr/bin/sublime

sublime user settings, optional

<pre>{
    "color_scheme": "Packages/Color Scheme - Default/Monokai.tmTheme",
    "font_face": "terminus",
    "font_size": 12,
    "word_wrap": true
}</pre>