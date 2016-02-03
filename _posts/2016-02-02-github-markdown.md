---
published: true
layout: post
date: "2016-02-02 08:36 +0100"
title: github markdown
---

It appears that changing markdown to kramdown (in config.yml) broke line breaks of this blog, as if kramdown does not support double-space as line-break, under investigation ... < The change was requested by github build bot.

edit: According to [kramdown docs](http://kramdown.gettalong.org/quickref.html), that should NOT be the case.

[Illustration of the problem](/media/linebreaks.png), where red arrows represent expected line breaks.  

edit: Same behaviour if running jekyll offline, so I guess this is jekyll specific bug of some sort or kramdown specific issue, perhaps simple < links > like that are not properly supported.
