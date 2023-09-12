---
published: true
layout: post
date: '2017-09-22 12:40 +0200'
title: thunar intercept
tags: bash linux
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
        # real app, like geany
        geany "$var"
        
    done
    
seems to work for files/paths with s p a c e s in them as well.

Or more general, custom action like this (first parameter is command)

    intercept geany %F

And 'intercept' script like this

    #!/bin/bash

    # intercept (thunar weird quoting)

    # thunar custom action could look like:
    # intercept geany %F

    # echo
    notify-send "$*"

    # main
    exec="$1" # first parameter is command
    shift
    "$exec" "$@"

    # This entire script should be replaceable with simple 
    # "$@", but not working for some reason.
    
Probably not politically correct, but works.
