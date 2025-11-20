---
published: true
layout: post
date: '2025-11-20 17:20'
title: No cursor blinking for you
tags: linux cli bash 
---
Put into .zshrc

    # disable cursor blinking
    echo "\e[2 q"

It should be terminal independent.
