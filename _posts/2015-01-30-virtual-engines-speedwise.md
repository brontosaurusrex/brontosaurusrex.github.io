---
id: 3694
title: virtual engines speedwise
date: 2015-01-30T16:53:47+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3694
permalink: /2015/01/virtual-engines-speedwise/
categories:
  - Uncategorized
---
(The speed seems to be combination of speed of &#8220;shared folder&#8221; tech and slightly ffmpeg.)

[<img src="http://shrani.si/t/I/RA/2CbHtqm/virtualenginesspeed.jpg" style="border: 0px;" alt="Shrani.si" />](http://shrani.si/f/I/RA/2CbHtqm/virtualenginesspeed.png)

pure noio tests;

<pre>noio test

ffmpeg -f lavfi -i testsrc=duration=10:size=1920x1080:rate=25 -an -vcodec libx264 -preset slow -tune film -crf 21 -f mp4 -y /dev/null

native osx:				fps= 36
ubuntu vmware: (with 16 cores): 	fps= 17,36,35
crunch vmware: (with 4 cores):		fps= 18,26,26
crunch vmware: (with 16 cores):		fps= 15,31,31

*ubuntu 64bit, 14.04.1
*crunchbang wheezy
</pre>

&#8212;&#8212;&#8212;&#8212;- And how to export appliance from vmware
  
<http://techiezone.rottigni.net/2014/07/howto-export-a-vm-in-ova-format-in-vmware-fusion-for-os-x/>
  
vmware and exporting to ova format on osx, example

<pre>cd /Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool/
./ovftool --acceptAllEulas  "/Users/b/Documents/Virtual Machines.localized/Debian 7.x 64-bit.vmwarevm/Debian 7.x 64-bit.vmx" /Users/b/Desktop/singularityVMware.ova </pre>