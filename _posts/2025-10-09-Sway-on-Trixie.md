---
published: true
layout: post
date: '2025-10-09 06:54'
title: Sway on Trixie
tags: linux
---
## Install

    apt install sway

brings bunch of goodies with it (including foot terminal).

## Keyboard

Change keyboard layout:

    sway input type:keyboard xkb_layout <country code>

or in sway config, this seems to work:

    #keyboard
    input "1:1:AT_Translated_Set_2_keyboard" {
        xkb_layout <country code>
    }

Copy foot and sway configs to your home dir. 

[Sway wiki](https://github.com/swaywm/sway/wiki).

## Change default monospaces font for a user

    mkdir -p .config/fontconfig
    cd .config/fontconfig
    vim fonts.conf

put

    <match target="pattern">
      <test name="family" qual="any">
        <string>monospace</string>
      </test>
      <edit binding="strong" mode="prepend" name="family">
        <string>EnvyCodeR Nerd Font Mono</string>
      </edit>
    </match>

## foot theme

    sudo apt install foot-themes
    # they will appear in /usr/share/foot/themes

in .config/foot/foot.ini

    include=/usr/share/foot/themes/catppuccin-frappe

So far  
<a href="https://images2.imgbox.com/56/55/I9AVxc0S_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/56/55/I9AVxc0S_t.png" alt="image"></a>

## Built-in bar status_command

A bash script in $HOME/bin/swayStatusCommand

    #!/bin/bash

    main () {

        awk '/MemTotal/ {t=$2} /MemAvailable/ {a=$2} END {printf("%.1f", a/t*100)}' /proc/meminfo
        echo -n "% memory free | "
        date +'%Y-%m-%d %H:%M'

    }

        print="$(main)"
        echo "$print"

and in sway config under 'bar'

    status_command while $HOME/bin/swayStatusCommand; do sleep 1; done
    
will display free mem in percents before the clock.

<a href="https://images2.imgbox.com/9a/bd/Axws0ppz_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/9a/bd/Axws0ppz_t.png" alt="image"></a> 
