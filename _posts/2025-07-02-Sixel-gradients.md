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


to be continued...

## chafa

> Chafa is a command-line utility that converts image data, including animated GIFs, into graphics formats or ANSI/Unicode character art suitable for display in a terminal.

    apt install chafa

Git <https://github.com/hpjansson/chafa>.

May be a nice middle utility for sceneDetectMitHtml script, seems to support sixels and kitty and everything else (not fully tested).

Force sixels, center image, max width in terms of terminal chars is 100x100 and fix weird pixel aspect ratio:

    chafa -f sixels -C on -s 100x100 --font-ratio=12/16 cupra.png

Quasy support for transparency:

    convert -size 920x180 xc:none -fill black -font Helvetica-Bold -pointsize 162 -gravity center -annotate 0 "Hello, Sixel" test.png
    chafa -f sixels --font-ratio=12/16 test.png

or one-liner:

    convert -size 920x180 xc:none -fill red -font Helvetica-Bold \
    -pointsize 150 -gravity center -annotate 0 "Hello, Sixel" png:- \
    | chafa -f sixels --font-ratio=12/16 -C on -

![chafa in action](/media/helloSixelChafa.png)