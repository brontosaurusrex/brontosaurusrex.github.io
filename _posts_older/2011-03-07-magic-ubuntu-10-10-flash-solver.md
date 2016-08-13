---
id: 1276
title: magic ubuntu 10.10 flash solver
date: 2011-03-07T04:40:33+00:00
author: bronto saurus
layout: post
guid: http://kravca.69.mu/blog/?p=1276
permalink: /2011/03/magic-ubuntu-10-10-flash-solver/
categories:
  - Uncategorized
---
`sudo apt-get --purge remove swfdec-mozilla adobe-flashplugin browser-plugin-gnash gnash gnash-common mozilla-plugin-gnash swfdec-mozilla; sudo dpkg -P flashplugin-installer; sudo apt-get --purge autoremove; sudo apt-get clean; sudo apt-get -y install flashplugin-nonfree`

or for more gracefull approach run this first:
  
`dpkg -l | grep flash; dpkg -l | grep gnash; dpkg -l | grep swf`