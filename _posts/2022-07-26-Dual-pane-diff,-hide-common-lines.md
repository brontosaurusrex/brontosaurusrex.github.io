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

meld way (the correct looking way, don't know how to hide common lines yet, but this is a search for a cli tool.)

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

comm --help

    -1              suppress column 1 (lines unique to FILE1)
    -2              suppress column 2 (lines unique to FILE2)
    -3              suppress column 3 (lines that appear in both files)

comm action (neat, small, readable?)

    comm -3 one.txt two.txt

    a
    b
    c
            g
            h
            i