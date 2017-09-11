---
published: true
layout: post
date: '2017-09-11 10:38 +0200'
title: python3 as interactive calc
---
Start python3 with empty prompt

    python3 -ic "import sys; sys.ps1=''"
    
script with some logging

    #!/bin/bash

    # pycalcInteractive

    # main
    script -q -a "$HOME/.pcalc.txt" -c "python3 -ic \"import sys; sys.ps1=''\""
    
^ This will start python3 with empty prompt and log everything to ~/.pcalc.txt

Improvement would be to load last n lines from log at next start and assign last valid result to python's result variable.
