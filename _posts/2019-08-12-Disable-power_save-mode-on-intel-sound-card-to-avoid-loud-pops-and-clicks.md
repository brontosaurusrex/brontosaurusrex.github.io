---
published: true
layout: post
date: '2019-08-12 20:50'
title: Disable power_save mode on intel sound card to avoid loud pops and clicks
tags: linux audio
---
This seems unrelated to pulse or alsa, but related to snd_hda_intel driver.

    inxi -A    
    Audio:     Device-1: Intel 82801JI HD Audio driver: snd_hda_intel 
               Sound Server: ALSA v: k4.19.0-5-amd64 

[https://askubuntu.com/questions/162419/how-do-i-fix-laptop-speakers-popping-when-no-sound-is-playing/175787](https://askubuntu.com/questions/162419/how-do-i-fix-laptop-speakers-popping-when-no-sound-is-playing/175787)

Script called audio-power-save-off

    #!/bin/bash
    # audio-power-save-off
    for dev in /sys/module/snd_*; do
            [ -w "$dev/parameters/power_save" ] || continue
            echo 0 > "$dev/parameters/power_save"
    done

and run as sudo.

To run at boot as root (systemd way)

    cd /lib/systemd/system
    sudo vi antipop.service
    
holds

    [Unit]
    Description=Antipop service

    [Service]
    ExecStart=/home/b/bin/audio-power-save-off

    [Install]
    WantedBy=multi-user.target
    
then

    sudo systemctl start antipop.service
    sudo systemctl enable antipop.service 
    #Created symlink /etc/systemd/system/multi-user.target.wants/antipop.service → /lib/systemd/system/antipop.service.
    
### Notes

[https://www.techtimejourney.net/how-to-blacklist-a-sound-card-in-linux/](https://www.techtimejourney.net/how-to-blacklist-a-sound-card-in-linux/)
