---
published: true
layout: post
date: '2017-07-18 10:04 +0200'
title: 'nvidia, overclocking, nvidia-smi, nvidia-settings'
---
![](https://images.nvidia.com/pascal/img/gtx1060/GeForce_GTX_1060_Front.png)

## nvidia overclocking on linux

untested

- nvidia-smi [https://devtalk.nvidia.com/default/topic/1011804/nvidia-smi-not-fully-supported-on-gtx-1060/](https://devtalk.nvidia.com/default/topic/1011804/nvidia-smi-not-fully-supported-on-gtx-1060/)
- coolbits?

### info

    sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -t -q GPUUtilization

actually does something...

## solution

This [script seems to be working](https://github.com/brontosaurusrex/postbang/blob/master/misc/bin/overclock)

troubleshooting

    # backup xorg.conf, then
    sudo nvidia-xconfig -a --cool-bits=12 --allow-empty-initial-configuration
    # in /etc/lightdm/lightdm.conf enable
    autologin-user=rudi
    # and/or restart lightdm
    systemctl restart lightdm.service
    
to get some clocks

    nvidia-smi -q -d CLOCK
    
[better](http://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries)

    # nvidia-smi --query-gpu=index,timestamp,power.draw,clocks.sm,clocks.mem,clocks.gr --format=csv -l 10
    # and even better, just showing current clock, power usage, fan speeds and gpu temp
    nvidia-smi --query-gpu=index,timestamp,power.draw,clocks.sm,fan.speed,temperature.gpu --format=csv -l 10
    
could return

    index, timestamp, power.draw [W], clocks.current.sm [MHz], fan.speed [%], temperature.gpu
    0, 2017/07/24 02:11:49.728, 107.17 W, 1961 MHz, 76 %, 74
    1, 2017/07/24 02:11:49.735, 109.56 W, 1936 MHz, 76 %, 75
    2, 2017/07/24 02:11:49.740, 111.50 W, 1961 MHz, 76 %, 78
