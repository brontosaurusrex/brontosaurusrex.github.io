---
published: true
layout: post
date: '2026-04-04 13:03'
title: Send file to ollama models for fixing typos
tags: misc ai 
---
Example:

    cat myfile.txt | ollama run gemma4 "Fix all typos and grammatical errors in this text and return the corrected version." --think=false

There is also much slower, but I guess much smarter:

    --hidethinking

[Tipos](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.experiments/bin/tipos) script can take typed text or files as input.

Example: 

    tipos "what th hec is thi?
    === Checking text: "what th hec is thi?" ===
    What the heck is this?
