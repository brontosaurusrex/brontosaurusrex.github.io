---
id: 791
title: simple php counter for flvplayer.php
date: 2010-04-13T15:31:23+00:00
author: bronto saurus
layout: post
guid: http://kravca.mu/blog/?p=791
permalink: /2010/04/simple-php-counter-for-flvplayer-php/
categories:
  - Uncategorized
---
should work like this:
  
vars:
  
**count** &#8211; int number
  
**iphistory** &#8211; an array of stored ip&#8217;s (this must be preference for the admin, say 20-100 should be good enough default) &#8211; this array is then loaded and checked for uniqueness and then stored back to flatfile text database, removing older entries&#8230;. (what happens if two or more hits are requested at once?)
  
**entirefilm** &#8211; flash may send something to see if the film was watched to the end, or javascript rather, similar to autoadvance feature.

in this case i would foremost like to know:
  
a. the list of say 20 latest unique ips that visited certain page (page with certain movie embedded) in order of appearance
  
b. entirefilm for an if = boolean true/false

The flatfile database may look like some sort of cvs:
  
hit#, uniqueip, entirefilm (1=true, 0=false)
  
1,12.13.14.15,1
  
2,16.128.11.10,0

Each page has its own database txt file (which is named according to the url or moviename, say &#8216;file.mp4.count&#8217;?).

on page display should look like:
  
`hits 210<br />
ip or hostname1, ip or hostname2 <-you, ip or hostaname3 -> 20`