---
id: 2967
title: fstabing smb location on wheezy
date: 2014-02-14T16:35:41+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2967
permalink: /2014/02/fstabing-smb-location-on-wheezy/
categories:
  - Uncategorized
---
requirements are cifs-utils

then

<pre>gksu geany /etc/fstab</pre>

and add something like;

<pre># comment
//server/folder /home/user/mount/here cifs nofail,username=user,password=pass,domain=domain,uid=1000 0 0</pre>

p.s. You should probably add the nofail option as this will define the entrie as non-critical.

test;

<pre>sudo mount -a</pre>

reboot and it should work (should be mounted as your user and not as root).
