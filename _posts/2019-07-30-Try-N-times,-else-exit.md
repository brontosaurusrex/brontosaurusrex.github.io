---
published: true
layout: post
date: '2019-07-30 00:12'
title: Try only N times
tags: bash mine 
---
    #!/bin/bash

    # tries

    # player 1
    num1="$(( RANDOM % 6 + 1 ))"
    echo "num1=${num1}"

    # player 2
    n="6" # retries

    # action
    for i in $(seq 1 $n); do 

        num2="$(( RANDOM % 6 + 1 ))"
        echo "num2=${num2} $i"
        (( num2 == num1 )) && break
        # sleep 1
        
    done 

    # results
    if (( i == n )) && (( num2 != num1 )); then
    
        echo "Not guessed in $n tries"
        exit 1

    else

        echo "Bravo!"
        
    fi
