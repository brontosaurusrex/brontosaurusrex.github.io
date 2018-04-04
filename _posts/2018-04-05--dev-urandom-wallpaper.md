---
published: true
layout: post
date: '2018-04-05 00:30 +0200'
title: /dev/urandom wallpaper
---
    mx=1920;my=1200;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- -colorspace gray -sharpen 1x1 +level 28%,38% -fill "#13384B" -tint 100 random.png
    # or less colorized, more greenish
        mx=1920;my=1200;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:-  -colorspace gray -sharpen 1x1 +level 32%,38% -fill "#1F414B" -tint 100 random.png
    
Needs imagemagick.