---
published: true
layout: post
date: '2019-12-11 12:03'
title: readOneKey
tags: bash 
---
## Basic

    #!/bin/bash

    # readOneKey

    #   h        cursor left
    #   j        cursor down
    #   l        cursor right
    #   k        cursor up

    readOneKey () {
        read -rsn1 woot
        if    [[ "$woot" == "h" ]]; then
            echo -n "(left) "
        elif  [[ "$woot" == "l" ]]; then
            echo -n "(right) "
        elif  [[ "$woot" == "j" ]]; then
            echo -n "(down) "
        elif  [[ "$woot" == "k" ]]; then
            echo -n "(up) "    
        fi
        echo -n "$woot "
    }

    while true; do readOneKey ; done

## Travel over parameters with j and k

    #!/bin/bash
    
    # example: travel one two three

    n="1"
    max="$#"
    min="1"

    [[ "$#" -eq 0 ]] && exit 1

    file=( "$@" ) # parameters to array

    dostuff () {
        
        m=$(( n - 1 )) # because it starts with 0
        echo -n "parameter $n "
        echo "${file[$m]}"

    }

    dostuff # 1st time

    readOneKey () {
        
        read -rsn1 key
        
        if  [[ "$key" == "j" ]]; then
            n=$(( n + 1 ))
        elif  [[ "$key" == "k" ]]; then
            n=$(( n - 1 ))  
        fi
          
        # limit and dostuff
        if (( "$n" > "$max" )); then
            n="$max"
        elif (( "$n" < "$min" )); then
            n="$min"
        else
            dostuff "$n"
        fi
    }

    while true; do readOneKey ; done
    
## Single press menu (alternative to bash 'select')

    #!/bin/bash

    # alternative to bash builtin select menu
    modes=(--set-centered --set-scaled --set-tiled --set-zoom --set-zoom-fill)
    maxkey="${#modes[@]}"

    for key in ${!modes[*]}
    do
        echo -n "${modes[$key]} ($(( key + 1 ))) "
    done
    echo
    unset key

    read -rsn1 key ; key="$(( key - 1 ))" 
    if (( key >= 0 && key <= maxkey )); then
        echo "${modes[$key]}"
    else
        echo "nope"
    fi
