---
published: true
layout: post
date: '2022-02-28 14:31'
title: Pick mouse position into variable
tags: linux bash 
---
    # with evil eval
    gpick -p -s && eval "$(xdotool getmouselocation --shell)" && echo $X $Y
    # or with no eval
    gpick -p -s && read -r X Y _ < <(xdotool getmouselocation) || exit
    X="${X//[^0-9]/}"; Y="${Y//[^0-9]/}"

[getAngle script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/getAngle).
