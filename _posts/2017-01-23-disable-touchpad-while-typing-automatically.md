---
published: true
layout: post
date: '2017-01-23 05:37 +0100'
title: Disable touchpad while typing automatically
tags: cli linux
---
[https://forums.bunsenlabs.org/viewtopic.php?id=3159](https://forums.bunsenlabs.org/viewtopic.php?id=3159)

> Add this line to ~/.config/openbox/autostart:

    syndaemon -i .5 -K -t -R -d &
