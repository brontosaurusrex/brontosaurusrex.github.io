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

Update: there is also [rga (ripgrep-all)](https://github.com/phiresky/ripgrep-all), which alows searching pdf, docx, sqlite, jpg, movie subtitles (mkv, mp4), etc and has some sort of `fzf` integration as well. Some debate on [HN](https://news.ycombinator.com/item?id=41567262).

## Benchmarks

Tools and version (all taken from Debian 12 repos)

    ug 3.11.2
    rg 13.0.0
    ack 3.6.0

Searching for word 'parallel' in my 'blog' fodler

    rg parallel         - took 2s
    rg -uuu parallel    - took 32s
    ug parallel         - took 18s
    ack parallel        - took 19s
    ug --save-config --ignore-files --no-tree
    ug parallel         - took 4s

Where `rg -uuu` should disable all filters, like ignoring git stuff.  
Where `ug --save-config --ignore-files --no-tree` should do the opposite.

## Fuzzy

    ug -Z palallel      - took 3s

<https://ugrep.com/#fuzzy>
