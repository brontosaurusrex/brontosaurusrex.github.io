---
published: true
layout: post
date: '2017-09-11 10:38 +0200'
title: python3 as interactive calc
---
Start python3 with empty prompt

    python3 -ic "import sys; sys.ps1=''"
    
[script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/pycalcInteractive) with some logging

    #!/bin/bash

    # pycalcInteractive

    # action
    script -q -a "$HOME/.pcalc.txt" -c "python3 -ic \"import sys; sys.ps1=''\""
    
    # latest valid numeral result to file ~/.pans.txt
	ans=$(grep -E '[[:digit:]]' "$HOME/.pcalc.txt" | tail -1)
	echo "$ans" > "$HOME/.pans.txt"
    
^ This will start python3 with empty prompt and log everything to ~/.pcalc.txt and store last valid numeral to ~/.pans.txt. To get result to bash $ans, you could source script

    source bin/pycalcInteractive
    # do your calc
    # - - -
    # back in bash
    echo $ans

Improvement would be to load last n lines from log at next start and assign last valid result to python's result variable.
