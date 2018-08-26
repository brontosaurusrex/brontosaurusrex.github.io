---
published: true
layout: post
date: '2018-08-26 21:23 +0200'
title: VNC over tunnel
tags:
  - linux
---
## On remote

    apt install x11vnc # ...

## On local

    ssh -L 5901:localhost:5901 -N -f -l user server.com -p 40000
    
generates a ssh tunnel.

    sudo apt install -t stretch-backports remmina
    
Connect to

    127.0.0.1:5901 # vnc protocol
    
Blender won't run, but blender-softwaregl might.
