---
id: 3004
title: installing fadein on wheezy (WITHOUT some help from never libc6)
date: 2014-03-10T21:59:46+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3004
permalink: /2014/03/installing-fadein-on-wheezy-without-some-help-from-never-libc6/
categories:
  - Uncategorized
---
get the **32bit version** and install it (you will need multiarch enabled for this)
  
do

<pre>sudo apt-get install libsm6:i386
sudo apt-get install gtk2-engines-murrine:i386
sudo apt-get install gtk2-engines-pixbuf:i386</pre>

run

<pre>fadein</pre>

done :)