---
published: true
layout: post
date: '2017-03-29 11:41 +0200'
title: Handling docx
---
    apt install unoconv
    
and

    unoconv -f text --stdout some.docx
    
should dump some.docx as txt to terminal stdout.
    
