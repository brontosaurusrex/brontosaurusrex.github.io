---
published: true
layout: post
date: '2018-05-22 21:44 +0200'
title: Automounting of large external drives
tags:
  - linux
---
## desktop

[https://wiki.archlinux.org/index.php/thunar#Automounting_of_large_external_drives](https://wiki.archlinux.org/index.php/thunar#Automounting_of_large_external_drives)

man

> udiskie is a front-end for UDisks written in python. Its main purpose is automatically mounting removable media, such as CDs or flash drives. It has optional mount notifications, a GTK tray icon and user level CLIs for manual mount and unmount operations. The media will be mounted in a new directory under /media or /run/media/USER/, using the device name if possible.
    
Something like this in your .config/openbox/autostart

	# automount
	udiskie -2 &
    
[https://forums.bunsenlabs.org/viewtopic.php?id=4847](https://forums.bunsenlabs.org/viewtopic.php?id=4847)

## headless raspbian

	apt install usbmount

edit

	sudo vi /lib/systemd/system/systemd-udevd.service 
    # change from MountFlags=slave to MountFlags=shared
    
reboot

It should mount as /media/usb#. Also make sure if disk is ext4 that it is chowned to you, for example

	sudo chown -R pi:pi /media/usb
