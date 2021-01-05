---
published: true
layout: post
date: '2021-01-05 03:56'
title: Beep on folder change, windows
tags: misc 
---
Combining total commander, [when_changed](https://github.com/benblamey/when_changed) and mpv.

    cd totalcmd # starting dir

In directory next to totalcmd ../util/whenChanged are

    play.bat
    chime.flac
    when_changed.exe

where play.bat is

    start "" /min ..\mpv\mpv --no-video chime.flac

and total commander button is

    Command: cmd /K when_changed
    Parameters: "%P\**" play.bat
    Start path: %COMMANDER_PATH%\..\util\whenChanged\
    Icon file: %COMMANDER_PATH%\..\ico\actions\view-media-chart.ico
    Tooltip: beep on change

When button is pressed directory monitoring (recursive) is in effect (cmd window will open) and on any changes mpv will play chime.flac.

[![scrotWhen.png-s7xoXOcakoWYEEs-md](https://images.weserv.nl/?url=https://i.imgur.com/m1aEK9V.png)](https://images.weserv.nl/?url=https://i.imgur.com/m1aEK9V.png)

