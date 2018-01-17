---
published: true
layout: post
date: '2017-11-06 09:59 +0100'
title: 'Conky, nice font'
tags: linux
---
    default_bar_size 75 6
    TEXT
    ${font RobotoCondensed-Light:size=12}${execpi 60 kanConky}
    ${color 111111}${font RobotoCondensed-Light:size=22}${execpi 200 temperatura} ${font RobotoCondensed:size=10} \
    ${color black}cpu ${if_match ${cpu}>=90}${color black}${endif}$cpubar  \
    ${color black}ram ${if_match ${memperc}>=90}${color aa3333}${endif}$membar  \
    ${color black}disk ${if_match ${fs_used_perc /home}>=90}${color aa3333}${endif}${fs_bar /home} \
    ${color black}${if_match ${downspeedf}>=1}ˇ$downspeed/s${endif} \
    ${color black}${if_match ${upspeedf}>=1}^$upspeed/s${endif}
