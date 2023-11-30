---
published: true
layout: post
date: '2023-11-30 13:57'
title: Ripgrep is faster than ack
tags: misc cli 
---
<https://blog.burntsushi.net/ripgrep/>  
<https://news.ycombinator.com/item?id=38471822>

In Debian repos, command name is `rg`.

There is also [ugrep](https://ugrep.com), which can also searh pdfs, documents, e-books and image metadata. Command name is `ug`. Also in repos.

## Benchmarks

Searching for word 'parallel' in my 'blog' fodler

    rg parallel         - took 2s
    rg -uuu parallel    - took 32s
    ug parallel         - took 18s
    ack parallel        - took 19s
    ug --save-config --ignore-files --no-tree
    ug parallel         - took 4s

Where `rg -uuu` shoudl disable all filters, like ignoring git stuff. Where `ug --save-config --ignore-files --no-tree` should do the opposite.