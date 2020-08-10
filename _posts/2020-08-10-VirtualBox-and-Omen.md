---
published: true
layout: post
date: '2020-08-10 18:42'
title: VirtualBox and Omen
tags: misc 
---
Disable hyper-v?  
[https://forums.virtualbox.org/viewtopic.php?f=6&t=90206](https://forums.virtualbox.org/viewtopic.php?f=6&t=90206)  

Can't find anything that looks like that, so

- F2 at boot, run memory test: passed
- run/OptionalFeatures.exe, enabled 'Virtual Machine Platform' and 'Windows Hypervisor Platform' < guessing, reboot ...
^ no go, same crashy vbox (wm window crashed as wm reboot).
