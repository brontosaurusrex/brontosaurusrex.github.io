---
published: true
layout: post
date: "2016-04-10 19:18 +0200"
title: ssh server and arch VM
---

    # the easy way seems to be to put VM into "bridget adapter mode", 
    # but NAT should work as well with some port-forwarding
    sudo pacman -S openssh
    systemctl enable sshd.socket
    systemctl start sshd
