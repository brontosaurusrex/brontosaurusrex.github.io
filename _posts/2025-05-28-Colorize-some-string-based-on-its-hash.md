---
published: true
layout: post
date: '2025-05-28 20:28'
title: Colorize some string based on its hash
tags: bash 
---
    #!/bin/bash
    
    # colorizeStringBasedOnHash
    # Colorize some string based on its hash

    debug="0"

    if [ -z "$1" ]; then
      string="$RANDOM-$$"
    else
      string="$1"
    fi

    hash="$(echo "$string" | md5sum | cut -d ' ' -f 1)"; (( debug )) && echo "hash=${hash}"

    red=$((16#${hash:1:2})); (( debug )) && echo "red=${red}"
    grn=$((16#${hash:3:2})); (( debug )) && echo "grn=${grn}"
    blu=$((16#${hash:5:2})); (( debug )) && echo "blu=${blu}"

    # Some protection for very dark colors needed here

    echo -en "\e[38;2;${red};${grn};${blu}m"; echo -en "${string}"; echo -e "\e[0m"

So

    ./colorizeStringBasedOnHash "bark bark bark bark bark"

should always come out as pink. Run without parameters for random string. Not all terminals will support that (they have to be truecolor or something).
