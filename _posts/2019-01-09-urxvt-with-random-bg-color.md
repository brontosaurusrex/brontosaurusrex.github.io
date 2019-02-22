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
[![urxvtRndColorBG.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2019/01/09/urxvtRndColorBG.md.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2019/01/09/urxvtRndColorBG.png)

    #!/bin/bash

    # urxvtRndColorBG

    # open urxvt with random background color

    r=$(( ( RANDOM % 4 )  + 1 ))
    g=$(( ( RANDOM % 4 )  + 1 ))
    b=$(( ( RANDOM % 4 )  + 1 ))

    urxvt -bg rgb:$r/$g/$b &

[latest version of the script.](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/urxvtRndColorBG)
