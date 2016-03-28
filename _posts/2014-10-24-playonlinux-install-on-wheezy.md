---
id: 3489
title: playonlinux install on wheezy
date: 2014-10-24T11:21:29+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3489
permalink: /2014/10/playonlinux-install-on-wheezy/
categories:
  - Uncategorized
---
<http://www.playonlinux.com/en/download.html>
  
the addkey command should use sudo for the apt-key part;

<pre>wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -</pre>