---
id: 1331
title: nautilus scripts and ssh locations and new mplayer open with terminal
date: 2011-03-20T22:37:59+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1331
permalink: /2011/03/nautilus-scripts-and-ssh-locations-and-new-mplayer-open-with-terminal/
categories:
  - Uncategorized
---
You can&#8217;t just rmb inside nautilus ssh mounted location, it won&#8217;t work,
  
you need to &#8220;open with&#8221; -> find your script.

and a new mplayer script for remote/local files:

<pre lang="bash">#!/bin/bash

while [ $# -gt 0 ]; do
	picture="$1"
	
	/usr/bin/gnome-terminal -x mplayer -fixed-vo -cache 10000 "$picture" -fs
	shift
done
</pre>

my nautlius-script folder backup:
  
<http://brontosaurusrex.69.mu/nautilus/>