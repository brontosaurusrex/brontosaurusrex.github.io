---
published: true
layout: post
date: '2017-04-03 10:31 +0200'
title: hp laserjet 1018 on Debian
tags: linux
---
    apt install cups printer-driver-foo2zjs
    
add yourself to printer group (lpadmin)

    sudo usermod -a -G [group-name] [user-name]
    
download driver

    getweb 1018	# Get HP LaserJet 1018 firmware file
    
goto [localhost:631](http://localhost:631/), add printer

Some info [here](https://wiki.debian.org/SystemPrinting).
