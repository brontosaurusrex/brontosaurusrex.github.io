---
id: 2675
title: installing fadein on wheezy (with some help from sid libc6)
date: 2013-07-18T09:17:34+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2675
permalink: /2013/07/installing-fadein-on-wheezy-with-some-help-from-sid-libc6/
categories:
  - Uncategorized
---
**warning!!! this is a really bad idea and you may/will break your debian install:**

<pre>sudo geany /etc/apt/sources.list</pre>

add

<pre>## sid
deb http://http.debian.net/debian experimental main contrib non-free</pre>

then

<pre>sudo geany /etc/apt/preferences</pre>

define low priority for sid

<pre>Package: *
Pin: release a=experimental
Pin-Priority: 10</pre>

install libc6

<pre>sudo apt-get -t experimental install libc6</pre>

install fadein

<pre>sudo dpkg -i fadein-linux-amd64-demo.deb</pre>

proof;

<pre>INT. COMPUTER ROOM

                         USER
            Omg!, i have fuckin(o) installed
            fadein on wheezy, with some help from
            sid that is

Happy faces all over the place :)

                         USER (cont'd)
            Yes!

                                        SLOW, EROTIC
                                        FADE OUT:</pre>

p.s. nice font to use with fadein;
  
[CourierScreenplay.zip](http://www.fadeinpro.com/download/fonts/CourierScreenplay.zip)