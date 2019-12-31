---
published: true
layout: post
date: '2018-05-14 17:38 +0200'
title: ZX Spectrum & C64 emulators
tags:
  - misc
  - luv
---
## Spectrum

	sudo apt install fuse-emulator-gtk spectrum-roms
    fuse-gtk
    # or better
    fuse-sdl BruceLee.tzx.zip
    # or fullscreen, function keys are controling fuse then (try F1)
    fuse-sdl --full-screen ~/downloads/BruceLee.tzx.zip

In 'Options/peripherals/General' enable 'Kempston joystick' and disable the rest.

![bruceLeeZx-fs8.png]({{site.baseurl}}/media/bruceLeeZx-fs8.png)

Bruce lee  
[http://www.worldofspectrum.org/pub/sinclair/games/b/BruceLee.tzx.zip](http://www.worldofspectrum.org/pub/sinclair/games/b/BruceLee.tzx.zip)  
[http://www.worldofspectrum.org/infoseekid.cgi?id=0000718](http://www.worldofspectrum.org/infoseekid.cgi?id=0000718)

Scuba Dive  
[http://www.worldofspectrum.org/infoseekid.cgi?id=0004381](http://www.worldofspectrum.org/infoseekid.cgi?id=0004381)

![](https://www.worldofspectrum.org/pub/sinclair/games-inlays/Rereleases/s/ScubaDive(GrupoDeTrabajoSoftware).jpg)

Skool daze  
[http://www.worldofspectrum.org/infoseekid.cgi?id=0004549](http://www.worldofspectrum.org/infoseekid.cgi?id=0004549)

Starquake  
[http://www.worldofspectrum.org/infoseekid.cgi?id=0004873](http://www.worldofspectrum.org/infoseekid.cgi?id=0004873)

    CONTROLLING BLOB
    Keyboard:
    O Left                                  P Right
    A Down or lay bridging platform         Q Up or pick up an object
    M Fire                                  Also user definable key option

Best games  
[http://www.worldofspectrum.org/bestgames.html](http://www.worldofspectrum.org/bestgames.html)

## Spectrum online emulator

[http://torinak.com/qaop](http://torinak.com/qaop)

## C64

	sudo apt install vice
    # get roms
    wget http://www.zimmers.net/anonftp/pub/cbm/crossplatform/emulators/VICE/old/vice-0.14.2-roms.tar.gz
    # extract them to .vice/C64 and so on
    x64
