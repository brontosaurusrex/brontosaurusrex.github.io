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
        
        m=$(( n - 1 )) # becouse it starts with 0
        echo -n "parameter $n "
        echo "${file[$m]}"

    }

    dostuff # 1st time

    readOneKey () {
        
        read -rsn1 woot
        
        set -x
        if  [[ "$woot" == "j" ]]; then
            n=$(( n + 1 ))
        elif  [[ "$woot" == "k" ]]; then
            n=$(( n - 1 ))  
        fi
        set +x
        
        # limits
        (( "$n" >= "$max" )) && n="$max" 
        (( "$n" <= "$min" )) && n="$min"
        
        dostuff "$n"

    }

    while true; do readOneKey ; done
