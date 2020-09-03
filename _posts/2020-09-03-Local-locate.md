---
published: true
layout: post
date: '2020-09-03 15:55'
title: Local locate
tags: linux 
---
## test

Generate database

    updatedb --require-visibility 0 -o ~/.mylocate.db -U ~/

Benchmark (it is fast)

    time ( locate -d .mylocate.db .mp4 | wc -l ) 
    1317
    0.66s user 0.01s system 100% cpu 0.675 total

## implementation

    crontab -e
    
add

    # test update db every hour
    0 * * * * updatedb --require-visibility 0 -o ~/.mylocate.db -U ~/ 2>/tmp/locateErr.log

and to .bash_aliases

    # my locate
    alias mylocate="locate -d ~/.mylocate.db"
    
usage example

    mylocate png | wc -l
