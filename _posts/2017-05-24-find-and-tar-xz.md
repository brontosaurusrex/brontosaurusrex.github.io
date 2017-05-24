---
published: true
layout: post
date: '2017-05-24 13:56 +0200'
title: find and tar xz
---
    find . -type f -name "*.blend" | tar -cJf blenderBlends.tar.xz -T -
    
From man tar

    c        - create
    J        - use xz compression
    f        - use file as output
    T        - get names to extract or create from FILE
             Unless specified otherwise, the FILE must contain a list of 
             names separated by ASCII LF (i.e. one name per  line).
    -        pipe
    # Order of switches seems to be important, f must be last.
    
From find man

     -type f - regular file
     -name   - matches shell pattern

    