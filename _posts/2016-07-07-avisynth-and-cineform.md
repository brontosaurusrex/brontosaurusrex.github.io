---
published: true
layout: post
date: '2016-07-07 15:02 +0200'
title: avisynth and cineform ...
---
It will take a while before one realizes what dlls go where, but after some painfull minutes/hours a script like this might actually open cineform mov in virtualdub

    #LoadPlugin("t:\path\LSMASHSource.dll")
    a=LSMASHVideoSource("cineform.mov", format = "YUV420P8")
    b=LSMASHAudioSource("cineform.mov")
    audiodub(a,b)
    
f*** windows.

lsmash works  
[http://forum.doom9.org/showthread.php?t=167435](http://forum.doom9.org/showthread.php?t=167435)  
