---
published: true
layout: post
date: '2026-04-04 13:03'
title: Send files or text to local Ollama model for fixing typos
tags: misc ai 
---
Example:

    cat myfile.txt | ollama run gemma4 "Fix all typos and grammatical errors in this text and return the corrected version." --think=false

There is also much slower, but I guess much smarter:

    --hidethinking

[Tipos](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/tipos) script can take typed text or files as input.

Examples: 

    tipos "what th hec is thi?
    === Checking text: "what th hec is thi?" ===
    What the heck is this?

    tipos "on plus one is three, two pls two in five.
    === Checking text: "on plus one is three, two pls two in five." ===
    One plus one is two, two plus two is four.
