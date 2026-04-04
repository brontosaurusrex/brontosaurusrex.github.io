---
published: true
layout: post
date: '2026-04-04 08:58'
title: PS eject CD
tags: misc 
---
    (New-Object -comObject Shell.Application).NameSpace(17).ParseName("E:").InvokeVerb("Eject")
