---
published: true
layout: post
date: '2024-05-12 17:19'
title: Halloy IRC gui client
tags: misc 
---
[https://halloy.squidowl.org](https://halloy.squidowl.org)

> Halloy is an open-source IRC client written in Rust, with the iced GUI library. It aims to provide a simple and fast client for Mac, Windows, and Linux platforms.

It tiles nicely and likes mice.

![comic](https://imgs.xkcd.com/comics/team_chat_2x.png)

Config so far:

    # Halloy config.
    #
    # For a complete list of available options,
    # please visit https://halloy.squidowl.org/configuration/index.html
    
    scale_factor = 1.35
    
    [buffer.server_messages.join]
    enabled = true
    smart = 1800
    
    [buffer.server_messages.part]
    enabled = true 
    smart = 1800
    
    [buffer.server_messages.quit]
    enabled = true 
    smart = 1800
    
    [servers.liberachat]
    nickname = "mynick"
    server = "irc.libera.chat"
    channels = ["#halloy","#ubuntu","#blender","#libera","##chat"]
    
    [servers.liberachat.sasl.plain]
    username = "mynick"
    password = "pass"  

[https://halloy.squidowl.org/configuration/buffer.html](https://halloy.squidowl.org/configuration/buffer.html)
