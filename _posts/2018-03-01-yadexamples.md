---
published: true
layout: post
date: '2018-03-01 23:39 +0100'
title: yad examples
---
[http://smokey01.com/yad/](http://smokey01.com/yad/)

Simple launcher

    #!/bin/bash

        yad --undecorated --center --skip-taskbar \
        --title="launch" --button="thunar" --button="geany" --button="urxvt" 

        case $? in
            0)thunar
            ;;
            1)geany
            ;;
            2)urxvt
            ;;
        esac
        
  123
