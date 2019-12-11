---
published: true
layout: post
date: '2019-12-11 12:03'
title: readOneKey
tags: bash 
---
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
