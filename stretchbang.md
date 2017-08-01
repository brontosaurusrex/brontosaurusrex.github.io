---
layout: mine
title: stretchbang
published: true
---

## Install Debian 9

[With non-free firmware](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)

    md5sum *.iso # or
    md5sum -c MD5SUMS 
    # firmware-9.1.0-amd64-netinst.iso: OK

Install base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select *standard system utilities* and SSH server if you so wish.

Boot into cli.

    sudo apt install git apt-transport-https
    git config --global core.editor "vim" # and other git stuffgitcd 
    cd && mkdir source
    git clone https://github.com/brontosaurusrex/stretchbang
    cd stretchbang
    ./overwriteConfigs # copy user stuff, check what scripts does before running!
    sudo cp ect/apt/sources.list /etc/apt
    # in case of problem copy sources.list.http and then install apt-transport-https
    # and switch back to https sources version.
    sudo apt update && sudo apt dist-upgrade
    
## packages

    cd source/stretchbang/packs
    sudo apt install -y $(cat base.list)
    sudo apt install -y $(cat baseNoInstallRec.list)
    sudo apt install -y $(cat extra.list) # libre, gimp, inkscape
    # if error, find the package in base.list and delete/change it.
    # This will take a while to install.
    systemctl reboot
    
Should now boot into lightdm and openbox desktop (probably a bit broken) should happen.

## themes
Arc-Darker for 'Widget', Arc-Dark_ob_border for 'Window Border' in lxappearance. 'Papirus GTK' for icons. Cuprum is the font.

## wbar

    sudo apt install wbar wbar-config
    sudo rm /etc/xdg/autostart/wbar.desktop # start wbar in ob autostart
    
    - wbar does not autohide and will not take place on desktop < fix it with some openbox margins (bottom in this case)
    - wbar does not behave very friendly in multi-monitor enviroments.
    - wbar config is local floating point character dependant

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

