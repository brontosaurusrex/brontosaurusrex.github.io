---
published: true
layout: post
date: '2022-08-17 11:30'
title: Neat pixelization
tags: 
---
[https://hpjansson.org/blag/2022/08/16/adventure-game-graphics-with-dall-e-2/](https://hpjansson.org/blag/2022/08/16/adventure-game-graphics-with-dall-e-2)

    convert -adaptive-resize 10% -ordered-dither checks,16,16,16 -scale 1000% in.png out.png

Breakdown

    -adaptive-resize 10%            # resize to 10%
    -ordered-dither checks,16,16,16 # No idea, even after readin the man
                                    # 16,16,16 might have to do with colors
    -scale 1000%                    # scale back to orig size

Example out.png

[![image-nohash-md](https://i.imgur.com/R4DlaKKl.png)](https://i.imgur.com/R4DlaKK.png)