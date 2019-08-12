---
published: true
layout: post
date: '2019-08-12 20:50'
title: Disable power_save mode on intel sound card to avoid loud pops and clicks
tags: linux audio
---
This seems unrelated to pulse or alsa.

[https://askubuntu.com/questions/162419/how-do-i-fix-laptop-speakers-popping-when-no-sound-is-playing/175787](https://askubuntu.com/questions/162419/how-do-i-fix-laptop-speakers-popping-when-no-sound-is-playing/175787)

Script called audio-power-save-off

    #!/bin/bash
    # audio-power-save-off
    for dev in /sys/module/snd_*; do
            [ -w "$dev/parameters/power_save" ] || continue
            echo 0 > "$dev/parameters/power_save"
    done

and run as sudo.

To run at boot as root

    sudo crontab -e
    # and add
    @reboot /home/b/bin/audio-power-save-off
