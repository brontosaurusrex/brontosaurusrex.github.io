---
published: true
layout: post
date: '2022-12-04 22:03'
title: Alacritty with total commander on windows
tags: cli bash 
---
Command:

    %COMMANDER_PATH%\..\util\Alacritty\Alacritty-v0.11.0-portable.exe --config-file %COMMANDER_PATH%\..\util\Alacritty\alacritty.yml

Parameters: (exec 1st wsl engine and cd to total commander active pane)

    -e wsl --cd "%P\"

Icon file: (or some other path with the icon file)

    %COMMANDER_PATH%\..\ico\papirus\Alacritty.ico

Tooltip:

    Alacritty

Assuming that the tree looks like:

    totalcmd
    util
    └── Alacritty
        ├── alacritty.yml
        └── Alacritty-v0.11.0-portable.exe
    ico
    └── papirus
        └── Alacritty.ico

and yaml config want's to be next to executable.
