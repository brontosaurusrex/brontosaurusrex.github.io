---
published: true
layout: post
date: '2016-10-28 12:53 +0200'
title: yad gui file selector (put in .bashrc)
---
[https://forums.bunsenlabs.org/viewtopic.php?id=2919](https://forums.bunsenlabs.org/viewtopic.php?id=2919)

    # Yad gui file selector
    # put in .bashrc and call with ctrl+g from terminal
    select_files() { 
    local file files i IFS=' '
    local -n l=READLINE_LINE p=READLINE_POINT
    while IFS= read -rd '' file; do printf -v 'files[i++]' %q "$file"
    done < <(yad --file --multiple --width=600 --height=600 --center | tr '|\n' '\0\0')
    files="${files[*]}" l=${l:0:p}$files${l:p} p=$((p+${#files})); 
    }
    bind -x '"\C-g":select_files'
