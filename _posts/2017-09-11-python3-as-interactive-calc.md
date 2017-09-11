---
published: true
layout: post
date: '2017-09-11 10:38 +0200'
title: python3 as interactive calc
---
Start python3 with empty prompt

    python3 -ic "import sys; sys.ps1=''"
    
with some logging

    script -a "$HOME/.pcalc.txt" -c "python3 -ic \"import sys; sys.ps1=''\""
    # not working ^
