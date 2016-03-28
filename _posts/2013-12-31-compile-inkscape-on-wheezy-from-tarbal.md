---
id: 2905
title: compile inkscape (0.48.4) on wheezy from tarbal
date: 2013-12-31T11:45:55+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2905
permalink: /2013/12/compile-inkscape-on-wheezy-from-tarbal/
categories:
  - Uncategorized
---
<pre>2006  ./configure
 2007  sudo  apt-get build-dep inkscape
 2008  sudo apt-get install build-essential dpkg-dev fakeroot
 2011  ./configure 
 2013  make
 2016  sudo make install
 2017  inkscape &</pre>

p.s. Make sure deb-src is enabled in /etc/apt/sources.list