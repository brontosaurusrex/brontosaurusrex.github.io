---
layout: mine
comments: true
title: busterbang
published: false
---
# Bluepill ('busterbang')

Install Buster, only base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select *standard system utilities*.

## get stretchbang git and apply configs

    cd && mkdir source && cd source
    git clone https://github.com/brontosaurusrex/stretchbang
    cd stretchbang
    git config credential.helper store # optional
    # git checkout 01   # optionally checkout version tagged as 01
    ./overwriteConfigs  # copy user stuff, themes, fonts, icons ...
    
Things that are in repos now:

- papirus-icon-theme

    ./fixPaths          # in .wbar and .Xresources
    ./makeUserDirs      # mkdir documents downloads images ...

sources.list with some https power

    # FIXME
    # sudo cp -b ect/apt/sources.list /etc/apt
    # sudo apt update && sudo apt dist-upgrade

Network-manager

    cd source/stretchbang
    sudo cp -b etc/network/interfaces /etc/network

[https://wiki.debian.org/NetworkManager](https://wiki.debian.org/NetworkManager)

### Install packages

    cd ~/source/stretchbang/packs
    sudo ./installLess # or sudo ./installAll
    
ttf-liberation, ttf-freefont and catfish not found. And alot of others.
reboot

    systemctl reboot
    
Should now boot into lightdm / openbox.

[Virtual box guest additions.](https://virtualboxes.org/doc/installing-guest-additions-on-debian/)
