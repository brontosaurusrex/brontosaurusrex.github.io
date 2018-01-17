---
published: true
layout: post
date: '2017-05-24 13:56 +0200'
title: find and tar xz
tags: linux cli
---
    find . -type f -name "*.blend" | tar -cJf blenderBlends.tar.xz -T -
    
From man tar

    c        - create
    J        - use xz compression (j = bzip2.bz, z = gzip.gz)
    f        - use file as output
    T        - get names to extract or create from FILE
    Unless specified otherwise, the FILE must contain a list of 
    names separated by ASCII LF (i.e. one name per  line).
    -        pipe
    # Order of switches seems to be important, f must be last.
    
From man find

     -type f - regular file
     -name   - matches shell pattern
     
Another option is switch -a which will make tar to select compression based on suffix

    find . -type f -name "*.blend" | tar -caf blenderBlends.tar.xz -T -
    
    # .gz < is interesting due to speed 
