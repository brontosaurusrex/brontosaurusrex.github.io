---
published: true
layout: post
date: '2019-07-26 13:46'
title: ASCII Animation
tags: cli 
---
Required

    apt install pv wget


Action

    url="http://artscene.textfiles.com/vt100/firework.vt"
    wget -q -O- "$url" | pv -q -L 1600 # 9600 is to high

More [http://artscene.textfiles.com/vt100/](http://artscene.textfiles.com/vt100/).

Playall

    #!/bin/bash

    while read -r p 
    do 
            reset
            echo "$p"
            sleep 3
            wget -q -O- "$p" | pv -q -L 1600  
    done < <(lynx -dump -listonly -nonumbers http://artscene.textfiles.com/vt100/)
