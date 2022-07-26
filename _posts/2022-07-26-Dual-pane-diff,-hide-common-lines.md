---
published: true
layout: post
date: '2022-07-26 18:20'
title: Dual pane diff, hide common lines
tags: cli bash 
---
Two files

    one.txt     two.txt

    a           d
    b           e
    c           f
    d           g
    e           h
    f           i

meld way (the correct looking way)

![meld](/public/meld.png)

diff way (the other way)

    diff -y --suppress-common-lines one.txt two.txt

    a  < # I'd expect this to be >
    b  <
    c  <
    >  g
    >  h
    >  i

    # The other way?

    diff -y --suppress-common-lines two.txt one.txt
        
       >  a # really?
       >  b
       >  c
    g  <
    h  <
    i  <

To be continued.