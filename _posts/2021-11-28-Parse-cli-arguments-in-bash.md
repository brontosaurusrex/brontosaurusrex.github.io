---
published: true
layout: post
date: '2021-11-28 19:42'
title: Parse cli arguments in bash
tags: bash cli linux 
---
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

looks interesting.
