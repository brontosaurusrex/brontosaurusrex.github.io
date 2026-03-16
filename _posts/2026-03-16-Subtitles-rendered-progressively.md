---
published: true
layout: post
date: '2026-03-16 14:50'
title: Subtitles rendered progressively?
tags: video 
---
## Premiere 2025

The problem: Subtitles burned into video on export, but the wanted export is progressive. Result: Weird looking subtitles, like some sort of interlaced brokage.

ChatGPT:

1. Select the caption track.
2. Graphics and Titles → Upgrade Caption to Graphic
3. Premiere creates Essential Graphics text layers.

Those render per frame, not per field.

endChatGPT

They still look weird if video is exported as progressive.
