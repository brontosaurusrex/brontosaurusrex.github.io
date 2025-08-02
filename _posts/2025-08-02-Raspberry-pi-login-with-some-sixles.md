---
published: true
layout: post
date: '2025-08-02 14:51'
title: Raspberry pi login with some sixels
tags: cli bash linux 
---
Stick into ~/.zshrc

    # logo display
    #img2txt -y 15 -W 60 -d none ~/.logo/pi.svg
    chafa --fg-only --font-ratio 0.65 -f sixels ~/.logo/pi.png

Where --font-ratio should fix fat or skinny images depending on your terminal line height settings. Profit.

![scrot](/media/piSixels.png)

p.s. To convert svg to png with transparency with image magick

    convert -background none pi.svg pi.png
