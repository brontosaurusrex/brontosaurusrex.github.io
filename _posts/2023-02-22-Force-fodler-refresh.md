---
published: true
layout: post
date: '2023-02-22 18:58'
title: When and Force fodler refresh
tags: cli bash 
---
<https://superuser.com/questions/702402/how-do-i-refresh-directory-in-bash>

    cd . # untested

Testing implementation (not battle proven or tested): [when](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/when).

Update: That didn't work at all, the refresh had no influence on inotifywait.

The more dumb approach might work (removing inotifywait), comparing two ls outputs for example:  

    ls -tlhar > ~/tmp/ls.txt
    # wait a bit
    ls -tlhar > ~/tmp/ls2.txt
    # compare
    diff -u ls.txt ls2.txt | grep "^[+]"
    # if the comparion in not null, then mv ls2.txt to ls.txt
    # and wait/repeat

edit: [dumbwhen]((https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/dumbwhen) could be the thing.
