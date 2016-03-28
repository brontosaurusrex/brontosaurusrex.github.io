---
id: 2876
title: Inkscape subtitles / idea
date: 2013-12-08T21:29:10+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2876
permalink: /2013/12/inkscape-subtitles-idea/
categories:
  - Uncategorized
---
subtitles with inkscape
  
&#8211; Make a 3-line text in inkscape, just click, don&#8217;t use a box.
  
&#8211; align text to center
  
&#8211; align object to center

Save this as template.svg

Rest is bash fun / replacing

check width

<pre>inkscape -z -f testSub.svg -W</pre>

(I can&#8217;t check if fonts used in the document are actually installed)

convert to png

<pre>inkscape -z -f in.svg -e out.png</pre>

primitive breakapart bash
  
<http://paste.debian.net/plain/70069>