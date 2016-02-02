---
published: true
layout: post
date: "2016-02-02 08:36 +0100"
title: github markdown
---
It appears that changing markdown to kramdown (in config.yml) broke line breaks of this blog, as if kramdown does not support double-space as line-break, under investigation ... < The change was requested by github build bot.

edit: According to kramdown docs, that should NOT be the case  
<http://kramdown.gettalong.org/quickref.html>

Illustration of the problem, where red arrows represent expected line breaks:  
![linebreaks.png]({{site.baseurl}}/media/linebreaks.png)


