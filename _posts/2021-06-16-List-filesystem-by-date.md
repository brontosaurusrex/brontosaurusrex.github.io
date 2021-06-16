---
published: true
layout: post
date: '2021-06-16 11:20'
title: List filesystem by date
tags: bash linux 
---
    #!/bin/bash

    # listByDate

    # list dirs/files by date
    # and do something with each.
    # and do something with newest.

    while read -r path; do

        echo "$path" 
        # do something with $path here
        woot="$path" # For some reason $path is local
        
    done < <( find . -type d  -not -path "." -printf "%T@\t%Tc %p\n" | sort -n | cut -d " " -f 8- )

    # do something with $woot here
    [ -n "$woot" ] && cd "$woot" || exit
    tree --noreport -t | tail -n +2

Example usage

    cd apps
    listByDate

returns

    ./firefox/defaults
    ./firefox/defaults/pref
    ./firefox/browser/chrome
    ./firefox/browser/chrome/icons
    ./firefox/browser/chrome/icons/default
    ./firefox/browser
    ./firefox/browser/features
    ./firefox/fonts
    ./firefox/icons
    ./firefox/gmp-clearkey
    ./firefox
    ./firefox/gmp-clearkey/0.1
    ├── manifest.json
    ├── libclearkey.so
    ├── libclearkey.so.sig
    └── last
