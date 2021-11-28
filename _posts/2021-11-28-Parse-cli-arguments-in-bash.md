---
published: true
layout: post
date: '2021-11-28 19:42'
title: Parse cli arguments in bash
tags: bash cli linux 
---
Edit: Probably the cleanest looking while loop is still the 1st example on  
[https://mywiki.wooledge.org/BashFAQ/035](https://mywiki.wooledge.org/BashFAQ/035)

[https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash](https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash)  

    #!/bin/bash

    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -t|--target) target="$2"; shift ;;
            -u|--uglify) uglify=1 ;;
            *) echo "Unknown parameter passed: $1"; exit 1 ;;
        esac
        shift
    done

    echo "Where to deploy: $target"
    echo "Should uglify  : $uglify"

looks interesting. Or similar

    while [ "$#" -gt 0 ]; do
        case "$1" in
            -n) name="$2"; shift 2;;
            -p) pidfile="$2"; shift 2;;
            -l) logfile="$2"; shift 2;;

            --name=*) name="${1#*=}"; shift 1;;
            --pidfile=*) pidfile="${1#*=}"; shift 1;;
            --logfile=*) logfile="${1#*=}"; shift 1;;
            --name|--pidfile|--logfile) echo "$1 requires an argument" >&2; exit 1;;
            
            -*) echo "unknown option: $1" >&2; exit 1;;
            *) handle_argument "$1"; shift 1;;
        esac
    done