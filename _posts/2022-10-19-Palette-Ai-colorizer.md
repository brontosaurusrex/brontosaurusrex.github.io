---
published: true
layout: post
date: '2022-10-19 16:07'
title: Palette Ai colorizer
tags: luv 
---
<https://palette.fm/>  
<https://news.ycombinator.com/item?id=33261494>  
> I’ve been tinkering with AI and colorization for about five years. This is my latest colorization model. It’s a text-based AI colorizer, so you can edit the colorizations with natural language. To make it easier to use, I also automatically create captions and generate filters.

Due to output limted to 1920px in size, workaround to get to orig size could be to overlay color information over the original locally:

    orig="original.png"; color="colorized.png"                                      
    size="$(convert $orig -format '%wx%h' info:)"
    convert "$orig" \( "$color" -resize "$size" \) -compose colorize -composite original_colorized.png

^ This should look the same (or very similar) as upsized layer overlayed in color mode in photoshop.

Example colorization of a fairly abstract 3d render of a city  
[![image-nohash-md](https://i.imgur.com/0hXTJN9l.png)](https://i.imgur.com/0hXTJN9.png)
