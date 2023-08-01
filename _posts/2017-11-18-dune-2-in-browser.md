---
published: true
layout: post
date: '2023-08-01 10:04'
title: Dune 2 in browser and in dosbox
tags: misc
---
## browser

[https://epicport.com/en/dune2](https://epicport.com/en/dune2)  
![dune2.png]({{site.baseurl}}/media/dune2.png)

## dosbox

download:  
<https://www.bestoldgames.net/dune-2>

from dosbox mount path to game as c: or something

	mount c c:\dl\dune2
	c:
	dir

Run setup.exe first time, select soundblaster and say yes to extended memory, then

	dune2

and alt+enter to enter fullscreen, alt+tab to get back to the system.

scrot: <https://i.imgur.com/jLRSPea.png>

Example total commander laucher:

	Command: %COMMANDER_PATH%\..\util\dosbox\app\DOSBox\DOSBox.exe
	Parameter: -c "mount d ." -c "d:" -c "dune2"
	Start Path: %COMMANDER_PATH%\..\util\dune2\
	Icon file: whatever
	Tooltip: dune2 dosbox

Or a bat file launcher:

	dosbox -c "mount d c:\dl\Downloads\dune2" -c "d:" -c "dune2"

## misc

[https://lutris.net/games/dune-2000/](https://lutris.net/games/dune-2000/)
