---
published: true
layout: post
date: '2025-07-11 05:11'
title: Display $PATH line by line
tags: cli bash 
---
Alias path

    alias path='echo "$PATH" | tr : "\n" | nl'

could return

    1  /home/b/piper
    2  /home/b/.local/bin
    3  /home/b/bin
    4  /home/b/go/bin
    5  /home/b/.cargo/bin
    6  /and/much/more
