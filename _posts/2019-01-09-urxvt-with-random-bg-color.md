---
published: true
layout: post
date: '2019-01-09 23:19 +0100'
title: urxvt with random bg color
tags:
  - linux
  - mine
  - bash
---
[![urxvtRndColorBG.png-nEdxfVvVDNZ9Dfy-th](https://i.imgur.com/3zH3lfub.jpg)](https://i.imgur.com/3zH3lfu.jpg)

    #!/bin/bash

    # urxvtRndColorBG

    # open urxvt with random background color

    r=$(( ( RANDOM % 4 )  + 1 ))
    g=$(( ( RANDOM % 4 )  + 1 ))
    b=$(( ( RANDOM % 4 )  + 1 ))

    urxvt -bg rgb:$r/$g/$b &

[latest version of the script.](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/urxvtRndColorBG)
