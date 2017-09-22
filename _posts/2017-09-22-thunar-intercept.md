---
published: true
layout: post
date: '2017-09-22 12:40 +0200'
title: thunar intercept
---
Custom action like this

    intercept %F
    
And 'intercept' script like this

        #!/bin/bash

    # intercept (thunar weird quoting)

    rm $HOME/tmp/echo.txt

    for var in "$@"
    do

        echo "$var" >> $HOME/tmp/echo.txt
        notify-send "$var"
        
    done
    
seems to work for files with space in them as well.
