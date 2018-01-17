---
published: true
layout: post
date: '2017-09-11 10:38 +0200'
title: python3 as interactive calc
tags: cli linux bash mine
---
Start python3 with empty prompt

    python3 -ic "import sys; sys.ps1=''"

simple script

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

or don't *source* and do an alias like

    alias ans='cat ~/.pans.txt

p.s. Improvement would be to load last n lines from log at next start and assign last valid result to python's result variable.

## ipython ?

In stretch repos ([ipython3](http://ipython.org/))

## [pycalc script](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/pycalc) example usage

    pycalc -n 10*10 # noninteractive
    100

    pycalc # interactive, reads ~/.pans.txt to py ans variable
    ans
    100
    ans*10
    1000
    _+1
    1001
    _+ans
    1101
    exit()
    storing ans 1101 to ~/.pans.txt

    pycalc # 2nd session
    ans
    1101
    exit()
    storing ans 1101 to ~/.pans.txt

