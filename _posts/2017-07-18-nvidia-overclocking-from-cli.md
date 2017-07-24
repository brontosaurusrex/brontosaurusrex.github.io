---
published: true
layout: post
date: '2017-07-24 10:04 +0200'
title: 'nvidia, overclocking, nvidia-smi, nvidia-settings'
---
![](https://images.nvidia.com/pascal/img/gtx1060/GeForce_GTX_1060_Front.png)

## nvidia overclocking on linux

Research

- nvidia-smi [https://devtalk.nvidia.com/default/topic/1011804/nvidia-smi-not-fully-supported-on-gtx-1060/](https://devtalk.nvidia.com/default/topic/1011804/nvidia-smi-not-fully-supported-on-gtx-1060/)
- coolbits?  

    sudo DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -t -q GPUUtilization

actually does something...

## solution 1

This [script seems to be working](https://raw.githubusercontent.com/brontosaurusrex/tothemoon/master/bin/overclock)

troubleshooting

    # backup xorg.conf, then
    sudo nvidia-xconfig -a --cool-bits=12 --allow-empty-initial-configuration
    # in /etc/lightdm/lightdm.conf enable
    autologin-user=rudi
    # and/or restart lightdm
    systemctl restart lightdm.service
    
## solution 2 (start X, script stuff, kill X)

A [script like this one](https://raw.githubusercontent.com/brontosaurusrex/tothemoon/master/bin/overclockX).
 
and in /etc/X11/Xwrapper.conf 

    allowed_users=anybody
    
to enable running script without sudo.

### Turning this into systemd service

[https://unix.stackexchange.com/questions/47695/how-to-write-startup-script-for-systemd](https://unix.stackexchange.com/questions/47695/how-to-write-startup-script-for-systemd)
 
## info
    
to get some clocks

    nvidia-smi -q -d CLOCK
    
[better](http://nvidia.custhelp.com/app/answers/detail/a_id/3751/~/useful-nvidia-smi-queries)

    # nvidia-smi --query-gpu=index,timestamp,power.draw,clocks.sm,clocks.mem,clocks.gr --format=csv -l 10
    # and even better, just showing current clock, power usage, fan speeds and gpu temp
    nvidia-smi --query-gpu=index,timestamp,power.draw,clocks.sm,fan.speed,temperature.gpu --format=csv -l 10
    
Start X, run the script, kill X version of this mess  
[https://devtalk.nvidia.com/default/topic/981655/fan-speed-on-headless-linux-machine-without-performance-loss/?offset=3](https://devtalk.nvidia.com/default/topic/981655/fan-speed-on-headless-linux-machine-without-performance-loss/?offset=3)
