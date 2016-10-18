---
published: true
layout: post
date: 2014-06-03T21:05:39.000Z
id: 3214
title: mount mtp device on Debian wheezy/jessie (htc desire 500)
author: bronto saurus
guid: 'http://b.pwnz.org/?p=3214'
permalink: /2014/06/mount-mtp-device-on-debian-wheezy-htc-desire-500/
categories:
  - Uncategorized
---
mount

<pre>apt-get install jmtpfs
cd
mkdir here
jmtpfs here</pre>

and it should mount (connected with usb cable)

unmount

<pre>fusermount -u</pre>

edit: behaviour is buggy and slow.

a switch script could look like this (directory ~/here is supposed to exist)

<pre>#!/bin/bash

if mount -l | grep here; then 
    echo "is mounted here, unmounting now";
    fusermount -u ~/here
    
    else
    echo "not mounted here, mounting now";
    jmtpfs ~/here
    open ~/here


fi
</pre>

and an unrelated scrot of mint17 in action
  
[<img src="http://shrani.si/t/3N/Fz/3yep5fFy/htc.jpg" style="border: 0px;" alt="Shrani.si" />](http://shrani.si/f/3N/Fz/3yep5fFy/htc.png)

Problems?

> CHECK: that the usb cable you are using is one that is used for transferring data and not just one for charging the device! Some cheap tablets and mobiles for instance only have a charging cable! To the uninitiated, they both look the same!
