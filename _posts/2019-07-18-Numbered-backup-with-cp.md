---
published: true
layout: post
date: '2019-07-18 00:03'
title: Numbered backup with cp
tags: linux cli 
---
    ls            
    woot

    cp --backup=t woot woot2
    ls
    woot  woot2

    cp --backup=t woot woot2
    cp --backup=t woot woot2
    cp --backup=t woot woot2

    lst
    total 20K
    -rw-r--r-- 1 b b 4 Jul 18 00:00 woot
    -rw-r--r-- 1 b b 4 Jul 18 00:01 woot2.~1~
    -rw-r--r-- 1 b b 4 Jul 18 00:01 woot2.~2~
    -rw-r--r-- 1 b b 4 Jul 18 00:01 woot2.~3~
    -rw-r--r-- 1 b b 4 Jul 18 00:01 woot2
