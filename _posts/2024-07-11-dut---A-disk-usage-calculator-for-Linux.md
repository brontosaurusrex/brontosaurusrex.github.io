---
published: true
layout: post
date: '2024-07-11 10:15'
title: dut - A disk usage calculator for Linux
tags: linux cli 
---
Similar to tools like du, dust

> "dut" displays a tree of the biggest things under your current directory, and it also shows the size of hard-links under each directory as well.

Single main.c file which includes the how to gcc compile line:

[https://codeberg.org/201984/dut](https://codeberg.org/201984/dut)  
[https://news.ycombinator.com/item?id=40932492](https://news.ycombinator.com/item?id=40932492)

Example output (my user bin directory):

    4.1M    0B |- nu_plugin_textview
    4.4M    0B |- diskonaut
    8.5M    0B |- nu
    16M    0B |- nvim.appimage
    29M    0B |- zellij
    49M    0B |- difft
    75M    0B |- ffmpeg6
    75M    0B |- ffprobe
    76M    0B |- ffmpeg
    76M    0B |- ffmpeg_new
    80M    0B |- fx
    4.1M    0B |   |- scala.so
    5.1M    0B |   |- ponylang.so
    14M    0B |   |- lean.so
    17M    0B |   /- verilog.so
    109M    0B | /- grammars
    110M    0B /- runtime
    663M    0B .
