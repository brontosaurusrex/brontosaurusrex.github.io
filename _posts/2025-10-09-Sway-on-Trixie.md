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

<a href="https://images2.imgbox.com/0e/6e/rKwaVBzM_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/9a/bd/Axws0ppz_t.png" alt="image"></a> 

## Foot having dynamic titles

In .zshrc add

    # term info for foot?
    # Called when executing a command
    function preexec {
        print -Pn "\e]0;${(q)1}\e\\"
    }

Or easier/better looking, just disable titlebars in sway config

    # border
    default_border pixel 6
    default_floating_border pixel 6
    #for_window [app_id="foot"] border pixel 4
    # hide split indicator borders when only one window?
    hide_edge_borders smart


Resizing with mice will be easier on fatter borders btw.

<a href="https://images2.imgbox.com/5c/35/A1ObKpXE_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/5c/35/A1ObKpXE_t.png" alt="image"></a>

## gtk stuff

Use gnome-tweaks to change font(cuprum)/theme...

<a href="https://images2.imgbox.com/62/77/F4aSRltJ_o.png" target="_blank"><img src="https://thumbs2.imgbox.com/62/77/F4aSRltJ_t.png" alt="image"></a>

## tools

    grim        takes screenshots
    viewnior    shows pictures

## other ppl configs (examples)
<https://gist.github.com/rmrt1n/10c24dc597f5b31f432694fb95329bff>

## clipboard (clipman?)

to be continued ...
