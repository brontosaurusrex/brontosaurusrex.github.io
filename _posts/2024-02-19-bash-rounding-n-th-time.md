---
published: true
layout: post
date: '2024-02-18 08:00'
title: 'bash rounding, n-th time'
tags: bash mine
---
This bash function

    #!/bin/bash

    # awk_round

    round () { 
        awk 'BEGIN{printf "%."'"$1"'"f\n", "'"$2"'"}'
    }

    awk_round "$1" "$2"
    
behaves as one would expect

    awkround 0 42.1
    42
    awkround 0 42.5
    42
    awkround 0 42.6
    43
    awkround 0 -42.6
    -43
    
and it is also faster than bc. However one can still use bc in scripts, just perhaps send the floating results to this fancy function (if you need rounding).

Comment [here](https://forums.bunsenlabs.org/viewtopic.php?pid=53424).

2024, edit: A fully local function which calculates percentage rounds to 0:

    # calc percentage and round to 0
    perc () {
        local tmp
        tmp="$(bc -l <<< "$1/$2*100")"
        awk 'BEGIN{printf "%."'"0"'"f\n", "'"$tmp"'"}'
    }

Which could be called as:

    perc="$( perc "$part" "$all" )"
