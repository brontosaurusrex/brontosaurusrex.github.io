---
layout: page
title: stretchbang
published: true
---
[![stretch.md.png](https://cdn.scrot.moe/images/2017/08/01/stretch.md.png)](https://cdn.scrot.moe/images/2017/08/01/stretch.png)

## Install Debian 9

[With non-free firmware](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)

    md5sum *.iso # or
    md5sum -c MD5SUMS 
    # firmware-9.1.0-amd64-netinst.iso: OK

Install base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select *standard system utilities* and SSH server if you so wish.

Boot into cli.

    sudo apt install git apt-transport-https
    git config --global core.editor "vim" # and other git stuff
    git config credential.helper store    # store auth
    cd && mkdir source
    git clone https://github.com/brontosaurusrex/stretchbang
    cd stretchbang
    ./overwriteConfigs # copy user stuff, check what scripts does before running!
    sudo cp ect/apt/sources.list /etc/apt
    sudo apt update && sudo apt dist-upgrade
    
## Install packages

    cd source/stretchbang/packs
    sudo apt install -y $(cat base.list)
    sudo apt install -y --no-install-recommends $(cat baseNoInstallRec.list)
    sudo apt install -y $(cat extra.list) # libre, gimp, inkscape
    # if error, find the package in some.list and delete/change it.
    systemctl reboot
    
Should now boot into lightdm and openbox desktop (probably a bit broken).

## Fixing hardcoded stuff (make a script for this)

geany ~/.wbar ~/.Xresources # < path to urxvt icon file

## themes, icons, fonts
Arc-Darker for 'Widget', Arc-Dark_ob_border for 'Window Border' in lxappearance. 'Papirus GTK' for icons. Cuprum is the font.

## wbar

    sudo apt install wbar wbar-config
    sudo rm /etc/xdg/autostart/wbar.desktop # start wbar in ob autostart
    
- wbar does not autohide and will not take place on desktop < fix it with some openbox margins (bottom in this case)
- wbar does not behave very friendly in multi-monitor enviroments.
- wbar config is local floating point character dependent



## compile new version of tint2 master

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
~/bin/printVolCont is something that can be used to control ALSA master volume, alternatively volumeicon-alsa. Middle mouse click kills app.

### wbar 
Things are launched via intermediate script (launchee), so that can be only one (override with launching from openbox menu, say if you need multiple urxvt's).

### thunar

### firefox

make it auto  
https://askubuntu.com/questions/73474/how-to-install-firefox-addon-from-command-line-in-scripts

### geany

### vi?

### scripts

### openbox menu and pipe script
Static menu with a dynamic twist (powered by ~/bin/pipeMisc).

### backports
[https://brontosaurusrex.github.io/2017/07/03/debian-list-backports/](https://brontosaurusrex.github.io/2017/07/03/debian-list-backports/)

### xdg user dirs (must be automagic as well)

https://wiki.archlinux.org/index.php/XDG_user_directories
