---
id: 3577
title: how to shrink down virtualbox images
date: 2014-11-24T23:35:50+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3577
permalink: /2014/11/how-to-shrink-down-virtualbox-images/
categories:
  - Uncategorized
---
<http://dantwining.co.uk/2011/07/18/how-to-shrink-a-dynamically-expanding-guest-virtualbox-image/>

a. get rid of snapshots?
  
(perhaps clone first)

b.

<pre>mount -n -o remount,ro -t /dev/sda1/
zerofree -v /dev/sda1</pre>

seems to do something with wheezy/ext4

(This got me down from 4.17 to 3 gigs, no snapshots preserved)