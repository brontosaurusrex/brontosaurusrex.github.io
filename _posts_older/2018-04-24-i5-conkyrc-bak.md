---
published: true
layout: post
date: '2018-04-24 11:09 +0200'
title: i5.conkyrc bak
tags:
  - linux
  - mine
---
    background yes
    use_xft yes
    xftfont Liberation Sans:size=16
    xftalpha 1
    update_interval 15.0
    total_run_times 0
    own_window yes
    own_window_transparent yes
    own_window_type desktop
    own_window_argb_visual yes
    own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
    double_buffer yes
    minimum_size 300 20
    maximum_width 650
    draw_shades no
    draw_outline no
    draw_borders no
    draw_graph_borders no
    default_color 000000
    default_shade_color 000000
    default_outline_color 5D2560
    alignment bottom_left
    gap_x 15
    gap_y 5
    #no_buffers yes
    uppercase no
    cpu_avg_samples 2
    #override_utf8_locale yes
    default_graph_size 100 50
    default_gauge_size 30 15
    text_buffer_size 1024

    default_bar_size 75 6
    TEXT
    #${color black}${if_match ${downspeedf}>=1}$downspeedgraph${endif}
    ${font RobotoCondensed-Light:size=12}${execpi 60 kanConky}
    ${color 111111}${font RobotoCondensed-Light:size=12}${execpi 600 gpuAllWrap}
    ${color 111111}${font RobotoCondensed-Light:size=22}${execpi 200 temperatura} ${font RobotoCondensed:size=10} \
    ${color black}cpu ${if_match ${cpu}>=90}${color black}${endif}$cpubar  \
    ${color black}ram ${if_match ${memperc}>=90}${color aa3333}${endif}$membar  \
    ${color black}disk ${if_match ${fs_used_perc /home}>=90}${color aa3333}${endif}${fs_bar /home} \
    ${color black}${if_match ${downspeedf}>=1}dl $downspeed/s${endif} \
    ${color black}${if_match ${upspeedf}>=1}up $upspeed/s${endif}

