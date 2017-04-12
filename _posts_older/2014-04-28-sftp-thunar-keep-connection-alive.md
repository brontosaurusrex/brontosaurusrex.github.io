---
id: 3145
title: 'Sftp &#038; Thunar, keep connection alive'
date: 2014-04-28T10:32:04+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3145
permalink: /2014/04/sftp-thunar-keep-connection-alive/
categories:
  - Uncategorized
---
<http://crunchbang.org/forums/viewtopic.php?id=34161>

untested;
  
_1) create file on your local machine:
  
$ touch ~/.ssh/config
  
2) put following in this file:
  
Host *
  
ServerAliveInterval 240_