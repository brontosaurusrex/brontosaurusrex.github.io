---
published: true
layout: post
date: '2025-07-02 07:14'
title: Sixel experiments
tags: misc cli 
---

## some tests

RYGB gradient

    convert \
    \( -size 1x10 xc:"#f00" \) \
    \( -size 1x200 gradient:"#f00-#ff0" \) \
    \( -size 1x200 gradient:"#ff0-#0f0" \) \
    \( -size 1x200 gradient:"#0f0-#00f" \) \
    \( -size 1x10 xc:"#00f" \) \
    -append -scale 500x500! sixel:

Gime me some text

    convert -size 920x180 xc:white -fill black -font Helvetica-Bold -pointsize 162 -gravity center -annotate 0 "Hello, Sixel" sixel:


may be continued...

## chafa

> Chafa is a command-line utility that converts image data, including animated GIFs, into graphics formats or ANSI/Unicode character art suitable for display in a terminal.

    apt install chafa

Git <https://github.com/hpjansson/chafa>.  
May be a nice middle utility for sceneDetectMitHtml script, seems to support sixels and kitty and everything else (not fully tested).