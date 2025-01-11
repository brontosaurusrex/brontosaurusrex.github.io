---
published: true
layout: post
date: '2025-01-11 15:38'
title: Change one color to another in an image
tags: linux cli 
---
A fodler full of bmp images that have the 'wrong' version of red, that is 880015 and i'd like the red to be ff0000.
    
    mogrify -fuzz 10% -fill "#ff0000" -opaque "#880015" *.bmp

Note: mogrify will overwrite the originals, so work on a copy. Only tested on NON-antialiased images where colors are pure.
