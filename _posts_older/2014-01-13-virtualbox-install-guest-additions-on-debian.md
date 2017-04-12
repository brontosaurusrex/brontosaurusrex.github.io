---
id: 2929
title: virtualbox, install guest additions on Debian
date: 2014-01-13T13:06:26+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2929
permalink: /2014/01/virtualbox-install-guest-additions-on-debian/
categories:
  - Uncategorized
---
Follow these steps to install the Guest Additions on your Debian virtual machine:
  
Login as root;
  
Update your APT database with apt-get update;
  
Install the latest security updates with apt-get upgrade;
  
Install required packages with apt-get install build-essential module-assistant;
  
Configure your system for building kernel modules by running m-a prepare;
  
Click on Install Guest Additions… from the Devices menu, then run mount /media/cdrom.
  
Run sh /media/cdrom/VBoxLinuxAdditions.run, and follow the instructions on screen.

from;
  
http://virtualboxes.org/doc/installing-guest-additions-on-debian/