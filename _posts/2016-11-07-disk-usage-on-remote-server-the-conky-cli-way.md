---
published: true
layout: post
date: '2016-11-07 23:55 +0100'
title: disk usage the conky-cli way
---
in .bash_aliases

    alias cd1='cd /data1 && conky -c ~/.conkyrcdwm 2> /dev/null'
    
where .conkyrcdwm looks like

    out_to_console yes
    out_to_x no
    background no
    update_interval 10
    total_run_times 1
    use_spacer none
    default_bar_size 30 6
    
    TEXT
    
    #down $downspeed up $upspeed |
    ram $memperc%  |  cpu $cpu%  |  ${time %a %e. %B %G %H.%M}
    data1 disk ${fs_bar /data1} ${fs_free /data1} free
    
should return something like

    ram 20%  |  cpu 1%  |  Mon  7. November 2016 23.58
    data1 disk ########################______ 19.9GiB free
    
(Especially nice on remote servers and ...)
