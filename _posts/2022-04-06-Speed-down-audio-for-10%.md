---
published: true
layout: post
date: '2022-04-06 10:15'
title: Speed down audio for 10%
tags: audio cli 
---
	sox orig.wav 90.wav tempo 0.9

Mp3 also possible if

	sudo apt install libsox-fmt-mp3  

then
	
	sox orig.mp3 85.mp3 tempo 0.85

or else.
