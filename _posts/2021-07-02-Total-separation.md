---
published: true
layout: post
date: '2021-07-02 09:07'
title: Total separation
tags: misc 
---
How to separate more private configs from less private configs:  
[https://www.ghisler.ch/board/viewtopic.php?f=3&t=74945&p=403579#p403579](https://www.ghisler.ch/board/viewtopic.php?f=3&t=74945&p=403579#p403579)

    # cat wincmd.ini | grep -B 1 history.ini

    [SearchName]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [SearchIn]
    RedirectSection=%COMMANDER_PATH%\history.ini
    --
    [left]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [right]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [lefttabs]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [righttabs]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [RightHistory]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [LeftHistory]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [MkDirHistory]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [RenameTemplates]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [RenameSearchFind]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [RenameSearchReplace]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [SearchName]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [SearchIn]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [Command line history]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [Selection]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [SearchText]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [NewFileHistory]
    RedirectSection=%COMMANDER_PATH%\history.ini
    [LastTracks]
    RedirectSection=%COMMANDER_PATH%\history.ini