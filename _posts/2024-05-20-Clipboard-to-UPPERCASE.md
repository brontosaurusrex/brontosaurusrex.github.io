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

p.s. In windows, make a script.bat out of it and make a soft link (shortcut), this so called shortcuts can also have shortkey (ctrl + alt + u) for example.

![image](/media/shortcut.png)
![image](/media/shortcut_shortkey.png)

Total commander can also rename files to Uppercase with single button click:  
[https://www.ghisler.ch/board/viewtopic.php?p=455303&sid=bfafbe9446f3023230ccd16f57994dc4#p455303]( https://www.ghisler.ch/board/viewtopic.php?p=455303&sid=bfafbe9446f3023230ccd16f57994dc4#p455303)
