---
published: true
layout: post
date: '2019-01-17 10:39 +0100'
title: How to position windows in a video editor
tags:
  - mine
  - video
  - luv
---
YYC3 license
> Yes you can, but for non-commercial purposes only.

[Cuprum font](https://fonts.google.com/specimen/Cuprum).

![editor.svg]({{site.baseurl}}/media/editor.svg)

## More on windows and screens

Material window must be implemented in a way to not get in a way of player/recorder layouts, it could be a separated (full)screen (see Autodesk smoke*), it could be a floating window ..., it could be a 2nd use for player window.

View2 could be default for smaller screens or smaller program window sizes (but that shall be in preferences).

Buttons like _play, frame back/forward, in, out_ must not drastically increase the distance between player/recorder and timeline, good default seems to be either don't show any or perhaps overlayed over video at proper time (hard one).

Timeline shall not be necessarily video tracks, then audio tracks, each track can be either one. Or at least audio tracks that are not synced to video could be positioned anywhere (see After effects for example).

GUI elements like graph editor, effects editor or grading of which effect are regularly and mostly applied to clips or elements in timeline can use/re-purpose the player window or be overlayed over part of recorder window (there must be some sort of show/hide toggle, bumping the edge of the screen with mouse should work fine in full-screen situations, less so in windowed modes). 

If the grade or effect or lut is to be applied to master material, then rec window may be a good candidate (in case of view1).

## Other behaviors

Wipe/dissolve type of effects shall take the last duration used on timeline as default for a new one of the same type.

