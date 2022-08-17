---
published: true
layout: post
date: '2022-08-17 11:30'
title: Neat pixelization
tags: 
---
[https://hpjansson.org/blag/2022/08/16/adventure-game-graphics-with-dall-e-2/](https://hpjansson.org/blag/2022/08/16/adventure-game-graphics-with-dall-e-2)

    convert -adaptive-resize 10% -ordered-dither checks,16,16,16 -scale 1000% in.png out.png
