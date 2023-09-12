---
published: true
layout: post
date: '2017-07-06 22:32 +0200'
title: cp or mv multiple src files to some dir
tags: cli mine linux
---
    cd tmp
    mkdir dir && touch a b c
    ls
    # a b c dir
    cp -t dir/ a b c # < will copy a b c to dir/
    # -t, --target-directory=DIRECTORY
    # 	copy all SOURCE arguments into DIRECTORY
    
Same story with mv, same -t switch.

    # With more verbosity
    cp -v -t dir/ a b c
    # 'a' -> 'dir/a'
    # 'b' -> 'dir/b'
    # 'c' -> 'dir/c'
