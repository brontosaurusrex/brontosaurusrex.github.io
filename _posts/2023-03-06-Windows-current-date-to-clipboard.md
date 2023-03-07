---
published: true
layout: post
date: '2023-03-06 22:41'
title: Date to clipboard, windows
tags: cli 
---
    powershell.exe -Command "[datetime]::Now.ToString('yyyyMMdd') | clip"

and ctrl+v to whatever place needed.

> By default, PowerShell may prevent running scripts that are not digitally signed. To bypass this restriction, you can open PowerShell as an administrator and run the following command:

    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

Making a dekstop shortcut & (global?) hotkey:  

Having a script named 'date.ps1' someplace, then making a new shortcut with target

     powershell.exe path\to\someplace\date.ps1

and assigning shortcut key:  

    Ctrl + Alt + D

![picture](/media/dateShortcut.png)
