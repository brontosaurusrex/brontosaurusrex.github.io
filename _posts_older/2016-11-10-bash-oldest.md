---
published: true
layout: post
date: '2016-11-10 11:45 +0100'
title: bash oldest
---
> Find the oldest modified file in a directory: 

    oldest() { local files f old; files=("${1:-.}"/*); old="${files[0]}"; for f in "${files[@]}"; do [[ $f -ot $old ]] && old=$f; done; printf '%s\n' "$old"; } ## Usage: oldest [dir]
    
last N (No idea how silly this is)

    stat -c "%Y %n" ./*.* | sort -rn | head -n +3 | cut -d ' ' -f 1 --complement
    # fails for files with spaces
