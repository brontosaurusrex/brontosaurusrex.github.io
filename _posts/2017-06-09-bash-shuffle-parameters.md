---
published: true
layout: post
date: '2017-06-09 23:28 +0200'
title: 'Bash, shuffle parameters'
---
    # looptest
    # shuffle parameters

    # usage
    # looptest 1 2 3 # could return 3 1 2

    a=("$@") t=(); 

    while [[ ${#a[@]} -gt 0 ]]; do 

        i=$((RANDOM % ${#a[@]})); 
        t+=("${a[i]}"); 
        unset 'a[i]'; 
        a=("${a[@]}"); done; 
        set -- "${t[@]}"; 
        echo "$@"
        
 Don't really understand this at this point in time. (All copyleft to freenode/#bash/konsolebox)
