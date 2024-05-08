---
published: true
layout: post
date: '2024-05-08 19:01'
title: wsl-notify-send
tags: bash cli linux 
---
[https://github.com/stuartleeks/wsl-notify-send](https://github.com/stuartleeks/wsl-notify-send)  
[https://stuartleeks.com/posts/wsl-github-cli-windows-notifications-part-1/](https://stuartleeks.com/posts/wsl-github-cli-windows-notifications-part-1/)   

## Prequel:

    Make a folder, say C:\bin
    Add that to the user windows %PATH%
    from cmd, check path with: echo %PATH%
    put wsl-notify-send.exe there

[How to add folder to Path illustrated.](https://stackoverflow.com/questions/44272416/how-to-add-a-folder-to-path-environment-variable-in-windows-10-with-screensho)

## Example:

As seen from Debian:

    wsl-notify-send.exe --category $WSL_DISTRO_NAME "done calculating"

A begining of a nice function is on the page:

    notify-send() { wsl-notify-send.exe --category $WSL_DISTRO_NAME "${@}"; }

p.s. Real one should include linux version as well.
