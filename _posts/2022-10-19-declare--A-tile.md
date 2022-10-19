---
published: true
layout: post
date: '2022-10-19 12:30'
title: declare -A tile
tags: cli bash 
---
An attempt at almost 'wave collapse algorithm'. Tiles with 4 nodes, to compare they must be shifted 2 chars. Only compare with left and top.

    # Maybe
    # ━ ┃  ┏ ┓┗ ┛  ┣ ┳ ┫ ┻  ╋
    declare -A tile
    tile[·]=____
    tile[━]=_b_d
    tile[┃]=a_c_
    tile[┏]=_bc_
    tile[┓]=__cd
    tile[┗]=ab__
    tile[┛]=a__d
    tile[┣]=abc_
    tile[┳]=_bcd
    tile[┫]=a_cd
    tile[┻]=ab_d
    tile[╋]=abcd

Shift string (rotate the four nodes)

    string="_bc_"                                                             
    echo ${string:2:2}${string:0:2}
    # c__b
    
    # Which is actually a__d
    # for first char on the left (d is not allowed) that becomes
    # a___, fits are [┃]=a_c_ and [┣]=abc_ and [┗]=ab__
    ┏  or ┏ or ┏ 
    ┃     ┣    ┗

To be continued...