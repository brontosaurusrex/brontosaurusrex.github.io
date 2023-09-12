---
published: true
layout: post
date: '2017-03-29 11:41 +0200'
title: Handling docx
tags: cli linux mine
---
    apt install unoconv
    
and

    unoconv -f text --stdout some.docx 
    # or similar, but worse:
    pandoc -t plain some.docx
    pandoc -t markdown some.docx
    
should dump some.docx as txt to terminal.

[http://dag.wiee.rs/home-made/unoconv/](http://dag.wiee.rs/home-made/unoconv/)

alias docx

    alias docx='unoconv -f text --stdout'
