---
published: true
layout: post
date: '2025-09-04 11:37'
title: You Suck at Programming
tags: bash 
---
> Creating a PERSISTENT Progress Bar on the Terminal with Bash! v2 Progress Bar

video:  
<https://www.youtube.com/watch?v=r2rbAvXMcXQ>

source:  
<https://github.com/bahamas10/ysap/blob/main/code/2025-09-03-progress-bar-2/progress-bar>

Nice 'fatal' function imho:

    fatal() {
      echo '[FATAL]' "$@" >&2
      exit 1
    }

Why not a bar with higher resolution?

    # one block is 8 possible parts, 12.5 % in each
    #U+2588	█	Full block                  100  %
    #U+2589	▉	Left seven eighths block    87.5 %
    #U+258A	▊	Left three quarters block   75   %
    #U+258B	▋	Left five eighths block     62.5 %  
    #U+258C	▌	Left half block             50   %
    #U+258D	▍	Left three eighths block    37.5 %
    #U+258E	▎	Left one quarter block      25   %
    #U+258F	▏	Left one eighth block       12.5 %
