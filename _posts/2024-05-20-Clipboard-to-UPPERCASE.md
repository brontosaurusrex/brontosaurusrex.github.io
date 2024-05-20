---
published: true
layout: post
date: '2024-05-20 08:12'
title: Clipboard to UPPERCASE (Windows)
tags: misc 
---
Command:

    powershell -command "Set-Clipboard -Value ((Get-Clipboard).ToUpper())"

In Total commander, a button with:

    Command: powershell -command "Set-Clipboard -Value ((Get-Clipboard).ToUpper())"
    Icon file: %COMMANDER_PATH%\..\ico\papirus\font-x-generic-symbolic.ico
    Tooltip: Clipboard to UPPERCASE
