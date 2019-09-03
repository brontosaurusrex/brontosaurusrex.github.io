---
layout: mine
comments: true
title: bucentaur
published: true
---
# Bucentaur

*Bucentaur is half-man and half-ox and half-dormouse.  
Bucentaur is a name that has first two letters the same as Buster.  
Bucentaur is a next generation of Stretchbang, without stretch and bang.*

[![2019-09-03-174445_2072x1254_scrot.md.png](https://cdn.scrot.moe/images/2019/09/03/2019-09-03-174445_2072x1254_scrot.md.png)](https://cdn.scrot.moe/images/2019/09/03/2019-09-03-174445_2072x1254_scrot.png)

## Install Debian 10

[https://www.debian.org/distrib/netinst](https://www.debian.org/distrib/netinst)

Install base system, skip creating *root* user and sudo should be the automagic default.  

Only install *standard system utilities*.

Boot into cli, install/configure git, sed, vim

    sudo apt install git apt-transport-https sed vim
    git config --global core.editor "vim" # optional

## Get bucentaur git and apply configs

    cd && mkdir source && cd source
    git clone https://github.com/brontosaurusrex/bucentaur
    cd bucentaur
    git config credential.helper store # optional
    
    ./overwriteConfigs  # copy user stuff, themes, fonts, icons ...
    ./fixPaths          # in .wbar and .Xresources
    ./makeUserDirs      # mkdir documents downloads images ...
    ./bin/pipeMisc      # generates first-run ~/bin/misc.xml user submenu

sources.list with some https power

    sudo cp -b etc/apt/sources.list /etc/apt
    sudo apt update && sudo apt dist-upgrade

Network-manager

    cd source/bucentaur
    sudo cp -b etc/network/interfaces /etc/network

[https://wiki.debian.org/NetworkManager](https://wiki.debian.org/NetworkManager)

### Install packages

    # automatic
    cd ~/source/bucentaur/packs
    sudo ./installLess # or sudo ./installAll
    
    # remove nm-applet xdg autostart
    # will be started from openbox autostart
    sudo rm /etc/xdg/autostart/nm-applet.desktop

    # reboot
    systemctl reboot

Should now boot into lightdm / openbox.

[Virtual box guest additions.](https://virtualboxes.org/doc/installing-guest-additions-on-debian/)

### Generate wallpaper

    noise +++ -p
    
Note: This assumes that you are loged into openbox already, more pluses will generate brighter wallpaper.

### Install Chrome

[https://www.google.com/chrome/](https://www.google.com/chrome/), save file

    cd downloads
    sudo dpkg -i google*.deb
    sudo apt -f install # fix deps
    
And 'ublock origin' extension.

Note: To start with http proxy

    google-chrome --proxy-server=host:port
    
### Hosts file

fixme ...

---
## ZSH

fixme ...

## FZF

    sudo apt install fzf
    
and add this to .bashrc

    # fzf /usr/share/doc/fzf/README.Debian
    source /usr/share/doc/fzf/examples/key-bindings.bash
    
Test Ctrl+R and Ctrl+T.

## Behaviour

### printVolCont in tint2
*~/bin/printVolCont* is something that can be used to control ALSA master volume, alternative would be volumeicon-alsa or pnmixer.

### hosts file
[http://someonewhocares.org/hosts/zero/](http://someonewhocares.org/hosts/zero/)

## Basic hotkeys

fixme ...

## Aliases and ~/bin scripts

fixme ...

## Autologin

    sudo vi /etc/lightdm/lightdm.conf
    # under [Seat:*] enable
    autologin-user=yourUserName
    
## Troubles and fixes

- nm-applet will sometimes not autostart when in /etc/xdg/autostart, workaround: move it to openbox autostart (fixed).
- bcterm calc is always decorated differently, replaced with galculator (fixed).
- Thunar's 'open terminal here' fails.
- Horrible virtualbox6 experience. (increasing video ram and changing adapter type fixed it)
- Cursor is dark in virtualbox, should be snowy. (fixed with 'sudo lxapperance' and seting the cursor theme there as well...).

## TOC
{:.no_toc}

* TOC
{:toc}

# <a href="#">^</a>
{:.no_toc}
