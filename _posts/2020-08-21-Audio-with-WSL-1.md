---
published: true
layout: post
date: '2020-08-21 22:38'
title: Audio with WSL 1
tags: linux misc 
---
On windows side, download pulse and configure it as [explained here](https://x410.dev/cookbook/wsl/enabling-sound-in-wsl-ubuntu-let-it-sing/), ignore the X part.

    Edit 'etc\pulse\default.pa'
    Line 42
    FROM    load-module module-waveout sink_name=output source_name=input
    TO      load-module module-waveout sink_name=output source_name=input record=0

    Line 61
    FROM    #load-module module-native-protocol-tcp
    TO      load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1

    STEP 4 Edit 'etc\pulse\daemon.conf'
    Line 39
    FROM    ; exit-idle-time = 20
    TO      exit-idle-time = -1

Then run bin\pulseaudio.exe from cmd or powershell.

On linux side, install pulseaudio, in shell type 

    export PULSE_SERVER=tcp:127.0.0.1

[![pulse.png-mUYMOF1gC64QbyD-md](https://images.weserv.nl/?url=https://i.imgur.com/rspkNo7l.png)](https://images.weserv.nl/?url=https://i.imgur.com/rspkNo7.png)  
Left: Windows running pulseaudio, Right: Debian using my radioClicky script. Win.

