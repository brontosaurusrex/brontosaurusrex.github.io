---
id: 3441
title: '&#8220;real-time&#8221; log display'
date: 2014-09-27T21:52:29+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3441
permalink: /2014/09/real-time-log-display/
categories:
  - Uncategorized
---
<pre>while [ 1 != 2 ]; do tail -n 25 /var/log/apache2/access.log ; sleep 5 ; clear ; done
</pre>

or with some coloring for localhost hits;

<pre>while [ 1 != 2 ]; do tail -n 25 /var/log/apache2/access.log | grep --color -E "127.0.0.1|$" ; sleep 5 ; clear ; done
</pre>

or with some ignores

<pre>while [ 1 != 2 ]; do cat /var/log/apache2/access.log | grep -v "127.0.0.1" | grep -v "dummy" | grep -v "Googlebot*" | tail -n 45 ; sleep 5 ; clear ; done</pre>