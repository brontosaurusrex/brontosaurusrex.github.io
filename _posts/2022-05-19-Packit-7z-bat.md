---
published: true
layout: post
date: '2022-05-19 08:55'
title: packit7z.bat
tags: mine 
---
	:: add bat folder to path
	set PATH=%PATH%;%COMMANDER_PATH%\..\bat\
	
	util\7za\7za.exe a totalWireLite.7z @include.txt -x@exclude.txt
	
	call renamebydate totalWireLite.7z

The script is part of closed-source totalWireLite thing.
