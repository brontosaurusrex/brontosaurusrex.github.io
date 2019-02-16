---
published: true
layout: post
date: '2019-01-28 22:02 +0100'
title: Terminal replacement for WSL on Windows 10?
tags:
  - cli
---
[http://cmder.net](http://cmder.net/)

![](https://cdn.scrot.moe/images/2019/01/29/cmder.png)

## Worth reading  
[http://www.akitaonrails.com/2017/09/20/windows-subsystem-for-linux-is-good-but-not-enough-yet](http://www.akitaonrails.com/2017/09/20/windows-subsystem-for-linux-is-good-but-not-enough-yet)

## Observations  
- WSL starts fast (a second) and already in the 'correct' directory (Called from total commander icon)
- cmder behaves a bit differently than your 'Debian icon cmd thingy', it appears that it runs bash.exe which launches the entire Debian subsystem, so silly hacks like `zsh` are required at the end of .bashrc ... (maybe there is a better place for it?) edit: There must be wsl.exe version of this.
- cmder looks way better
- i/o performance from/to say `/mnt/b` seems good for big files (Haven't done any real benchmarks), *people are complaining about poor small files read/write i/o*.
- CPU saturation seems 100% with `ffmpeg/x264`.
