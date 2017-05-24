---
published: true
layout: post
date: '2017-05-24 13:56 +0200'
title: find and tar xz
---
    find . -type f -name "*.blend" | tar -cf blenderBlends.tar.xz -T -
    
From man tar

    c        - create
    f        - use file as output
    T        - get names to extract or create from FILE
             Unless specified otherwise, the FILE must contain a list of names 
             separated by ASCII LF (i.e. one name per  line).
    -        pipe
    
From find man

     -type f - regular file
     -name   - matches shell pattern

    