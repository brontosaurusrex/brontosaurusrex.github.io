---
published: true
layout: post
date: '2026-04-04 08:58'
title: PS eject CD
tags: misc 
---
If CD DRIVE is mounted as e:\, this powershell command will eject it:

    (New-Object -comObject Shell.Application).NameSpace(17).ParseName("E:").InvokeVerb("Eject")
