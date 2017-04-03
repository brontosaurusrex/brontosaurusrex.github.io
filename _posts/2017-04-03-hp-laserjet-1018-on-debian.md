---
published: true
layout: post
date: '2017-04-03 10:31 +0200'
title: hp laserjet 1018 on Debian
---
    apt install cups printer-driver-foo2zjs
    
add yourself to printer group

    sudo usermod -a -G [group-name] [user-name]
    
download driver

    somecommandIforgot 1018
    
goto localhost:631, add printer

Some info [here](https://wiki.debian.org/SystemPrinting).