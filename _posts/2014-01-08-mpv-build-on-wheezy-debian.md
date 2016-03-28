---
id: 2924
title: mpv build on wheezy Debian
date: 2014-01-08T22:53:38+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2924
permalink: /2014/01/mpv-build-on-wheezy-debian/
categories:
  - Uncategorized
---
<pre>sudo apt-get install libncurses5-dev liblua5.1-0.dev devscripts equivs</pre>

get the mpv-build git and cd to source dir

<pre>(remove any mpv-build-deps**.deb)
mk-build-deps
sudo dpkg -i mpv-build-deps(TAB).deb 
sudo apt-get install -f</pre>

<pre>./rebuild -j2</pre>

after everything happens you can just copy mpv-build/mpv/build/mpv to ~/bin.

done.

p.s To switch to master branch;
  
./update &#8211;master
  
then ./clean and ./build