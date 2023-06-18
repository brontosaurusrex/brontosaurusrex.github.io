---
published: true
layout: post
date: '2023-06-12 04:45'
title: HP Omen, stupid way to wsl2 and gui apps
tags: 
---
After trying to install Ubuntu as wsl2 in win10 home edition and got 'Error 0x80370102':

1. In bios make sure virtualization is enabled (f10 at boot)
1. win10, 'windows features', enable stuff like 'virtual machine platform' and 'windows hypervisor platform'
1. make sure wsl version default is set to 2.
1. if on windows home use this workaround to install hyper-v stuff <https://www.wintips.org/how-to-enable-hyper-v-on-windows-10-11-home/>, a bat file run as root.
1. again 'windows features' and the new hyper-v should be there, but make sure to DISABLE it, otherwise expect BSOD.
1. powershell, install and lauch new vm: wsl --install -d Ubuntu-22.04
1. inside Ubuntu install some gui app, like geany
1. launch geany

[![image-nohash-md](https://i.imgur.com/kNCpmpsl.png)](https://i.imgur.com/kNCpmps.png)
