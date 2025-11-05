---
published: true
layout: post
date: '2025-10-31 16:39'
title: Ugly little analog clock for terminal (bash + awk)
tags: cli bash 
---
Around 30x30 chars ascii analog clock for the terminal, mostly written by chatgpt.  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/clockascii>

Config: To change aspect to fit your specific terminal, change ASPECT variable.

<img src="/media/clockascii.png" style="mix-blend-mode: lighten; max-width: 500px;">

Note, to test drawings, one can use faketime command

    faketime '13:37:00' clockascii

Maybe better sizes for hands:

    HOUR_LEN=7
    MIN_LEN=10

or the one where minute hand overrides the ticks:

    HOUR_LEN=8
    MIN_LEN=13
