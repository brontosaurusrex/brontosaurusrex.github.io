---
published: true
layout: post
date: '2025-08-02 17:27'
title: Ladybird (pre-alpha)
tags: web 
---
A new browser in the making.

> __Important__  
> Ladybird is in a pre-alpha state, and only suitable for use by developers

> Ladybird is currently in heavy development. We are targeting a first Alpha release for early adopters in 2026.
> Truly independent. No code from other browsers. We're building a new engine, based on web standards.

<a href="https://images2.imgbox.com/fc/a8/wRGMukO7_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/fc/a8/wRGMukO7_t.png" alt="image"></a>
<a href="https://images2.imgbox.com/e8/cb/sQWHaxLD_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/e8/cb/sQWHaxLD_t.png" alt="image"></a>
<a href="https://images2.imgbox.com/3f/93/wx5vghqX_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/3f/93/wx5vghqX_t.png" alt="image"></a>

Build instructions:  
<https://github.com/LadybirdBrowser/ladybird/blob/master/Documentation/BuildInstructionsLadybird.md>

Takes a long time to build (Ubuntu-24.04 running in wsl2).

About:version

    Version: 1.0        
    Arch: x86_64
    Operating System: Linux
    User Agent: Mozilla/5.0 (Linux; x86_64) Ladybird/1.0
    Command Line: /home/user/source/ladybird/Build/release/bin/Ladybird
    Executable Path: /home/user/source/ladybird/Build/release/bin/Ladybird

Observations in no particular order:
Youtube fails to load thumbnails or video, can't be navigated. This page almost work, other than hamburger navigation and the svg links. Client-side search on this page does work (surprisingly). Google is usable. Will not survive any css tests as it seems. Has a nice about:processes (task manager) page. Javascript propeled svg will not run. Javascript, cookies and 3rd party cookies are enabled.

