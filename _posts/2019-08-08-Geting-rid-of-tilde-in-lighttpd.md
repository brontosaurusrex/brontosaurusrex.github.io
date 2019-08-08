---
published: true
layout: post
date: '2019-08-08 21:03'
title: Geting rid of tilde in lighttpd
tags: web linux 
---
By not actually configuring the server one way or another

    cd /var/www/html 
    sudo ln -s /home/ticho/public_html t
    
and

    http://server/t 
    # old one is also still there
    # http://server/~ticho    
    
should be working.

[https://forums.bunsenlabs.org/viewtopic.php?id=5985](https://forums.bunsenlabs.org/viewtopic.php?id=5985)
