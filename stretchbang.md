---
layout: page
title: stretchbang
published: true
---
[![stretchbang.md.png](https://cdn.scrot.moe/images/2017/08/01/stretchbang.png)](https://cdn.scrot.moe/images/2017/08/01/stretchbang.png)

## Install Debian 9

[With non-free firmware](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)

    md5sum *.iso # or
    md5sum -c MD5SUMS 
    # firmware-9.1.0-amd64-netinst.iso: OK

Install base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select *standard system utilities* and *SSH server* if you so wish.

Boot into cli, install/configure git, sed, vim

    sudo apt install git apt-transport-https sed vim
    git config --global core.editor "vim" # and other git stuff
    git config credential.helper store    # store auth

get stretchbang git and apply configs
    
    cd && mkdir source
    git clone https://github.com/brontosaurusrex/stretchbang
    cd stretchbang
    ./overwriteConfigs  # copy user stuff, themes, fonts, icons ...
    ./fixPaths          # in .wbar and .Xresources

sources.list with some https power

    sudo cp ect/apt/sources.list /etc/apt
    sudo apt update && sudo apt dist-upgrade
    
Install packages

    cd source/stretchbang/packs
    sudo apt install -y $(cat base.list)
    sudo apt install -y --no-install-recommends \
    $(cat baseNoInstallRec.list)
    sudo apt install -y $(cat extra.list) # libre, gimp, inkscape
    # or run 'sudo ./installAll' to install them all
    systemctl reboot
    
Should now boot into lightdm and openbox desktop (probably a bit broken).

## Network-manager
    
    cd source/stretchbang
    sudo cp etc/network/interfaces /etc/network

[https://wiki.debian.org/NetworkManager](https://wiki.debian.org/NetworkManager)

## themes, icons, fonts
Arc-Darker for 'Widget', Arc-Dark_ob_border for 'Window Border' in lxappearance. 'Papirus GTK' for icons. Cuprum is the font.

## wbar

    sudo apt install --no-install-recommends wbar wbar-config
    sudo rm /etc/xdg/autostart/wbar.desktop # start wbar in ob autostart
    
- wbar does not autohide and will not take place on desktop < fix it with some openbox margins (bottom in this case)
- wbar does not behave very friendly in multi-monitor enviroments.
- wbar config is local floating point character dependent

## compile new version of tint2 master

This is not strictly needed, mostly some fixes with executor (alsa volume slider will be a bit jumpy in older/repository version).

Install dependancies  
[https://gitlab.com/o9000/tint2/wikis/Install#dependencies](https://gitlab.com/o9000/tint2/wikis/Install#dependencies)

    cd ~/source
    git clone https://gitlab.com/o9000/tint2.git
    cd tint2
    # checkout if you want specific version, see page
    mkdir build && cd build
    # sudo apt install cmake
    cmake ..
    make
    sudo make install # I know.

## Expected functionality/behaviour

### tint2
*~/bin/printVolCont* is something that can be used to control ALSA master volume, alternatively volumeicon-alsa.

### wbar 
Things are launched via intermediate script (launchee), so that can be only one (override with launching from openbox menu, say if you need multiple urxvt's).

### firefox addons

    cd ~/tmp
    # wget and install uBlock and Scrollbar anywhere
    wget https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi
    wget https://addons.mozilla.org/firefox/downloads/latest/scrollbaranywhere/addon-292702-latest.xpi
    firefox-esr *.xpi
    # yes, yes, restart

### geany

[![geany.png](https://cdn.scrot.moe/images/2017/08/01/geany.png)](https://cdn.scrot.moe/images/2017/08/01/geany.png)

### openbox menu and pipe script
Static menu with a dynamic twist (powered by *~/bin/pipeMisc*).

### backports
[https://brontosaurusrex.github.io/2017/07/03/debian-list-backports/](https://brontosaurusrex.github.io/2017/07/03/debian-list-backports/)

### xdg user dirs (should be automagic)

https://wiki.archlinux.org/index.php/XDG_user_directories

    ls ~ # shall return close to this:
    bin  documents  downloads  images  music  source  tmp  videos
    
which should be in sync with definitions in *~/.config/user-dirs.dirs*

## Basic hotkeys

    alt +
    y,x     left/right half
    c       center window
    v       full width, quite some height
    
    meta +
    f11     fullscreen
    f12     toggle compton
    
    Run *shortcuts* in terminal for more.
