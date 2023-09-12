---
published: true
layout: post
date: '2017-07-24 10:04 +0200'
title: 'nvidia, overclocking, nvidia-smi, nvidia-settings'
tags: video cli linux bash mine
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
    # or better 
    # allowed_users=console
    
to enable running script without sudo.

^ This is the one in use right now.

## git repo

[https://github.com/brontosaurusrex/tothemoon](https://github.com/brontosaurusrex/tothemoon)

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

## more

> I might be late but you can overclock pascal cards under GNU/Linux, via nvidia-settings. It's shame it's closely bounded to X.. so you should via root: nvidia-xconfig --enable-all-gpus --allow-empty-initial-configuration --cool-bits=31 Now you can continue with non-root user, but add him to video group. Make .xinitrc in your own choice and startx (or startx& if you want to send it to background) Now you have to keep X running while you play with nvidia-settings. Now - export DISPLAY=:0 and in same terminal type something (you should play with values by testing it) like nvidia-settings -a [gpu:0]/GPUPowerMizerMode=1 nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=-100 nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1200 nvidia-settings -a [gpu:0]/GPUFanControlState=1 nvidia-settings -a [fan:0]/GPUTargetFanSpeed=50 You can create script to execute it at startup. Also if you have many GPUs replace gpu:0 with gpu:1, gpu:2 etc. Also you can downvolt it via nvidia-smi -pl 90 (90 is just for example, value is watt) .

from [https://www.reddit.com/r/EtherMining/comments/6gbnw4/is_anyone_able_to_overclockp0_a_1060_under_linux/](https://www.reddit.com/r/EtherMining/comments/6gbnw4/is_anyone_able_to_overclockp0_a_1060_under_linux/)
