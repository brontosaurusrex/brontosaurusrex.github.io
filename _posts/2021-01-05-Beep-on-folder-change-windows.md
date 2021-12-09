---
published: true
layout: post
date: '2021-10-22 15:27'
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

    ..\mpv\mpv --no-video turkey.wav

and total commander button is

    Command: cmd /K when_changed
    Parameters: "%P\**" play.bat
    Start path: %COMMANDER_PATH%\..\util\whenChanged\
    Icon file: %COMMANDER_PATH%\..\ico\actions\view-media-chart.ico
    Tooltip: beep on change

When button is pressed directory monitoring (recursive) is in effect (cmd window will open) and on any changes mpv will play chime.flac.

[![scrotWhen.png-s7xoXOcakoWYEEs-md](https://i.imgur.com/m1aEK9V.png)](https://i.imgur.com/m1aEK9V.png)

Update, instead of play.bat there could be playRnd.bat which would play random file from folder

    @echo off 
    setlocal enableDelayedExpansion

    REM optional popup - msg.exe is copied to the same fodler
    msg.exe /TIME:5 %username% "Stuff changed."

    REM main
    cd /d "audio"

    REM Count total files and store into array
    set /a "i=0"
    for %%f in (*.*) do (
        set /a "i+=1"
        set "list[!i!]=%%f"
    )
     
    REM Get random number between 1 and %i%
    set /a rnd=%random% %%%i% +1

    REM Get MP3 at index of %i% and run it 
    ..\..\mpv\mpv --af=loudnorm "!list[%rnd%]!"

    timeout 5
