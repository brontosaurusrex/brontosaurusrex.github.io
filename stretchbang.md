---
layout: mine
title: stretchbang
published: true
---
<img src="{{site.baseurl}}/media/stretchBangLogo.png" style="max-width:1347px; position:relative; left:50%; transform:translate(-50%, 0%); margin-top: -70px; margin-bottom: -170px">
[![stretchbang.md.png](https://cdn.scrot.moe/images/2017/08/01/stretchbang.png)](https://cdn.scrot.moe/images/2017/08/01/stretchbang.png)

# Install Debian 9

[Official iso](https://www.debian.org/distrib/netinst) or [with non-free firmware](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)

    md5sum *.iso # or
    md5sum -c MD5SUMS
    # firmware-9.1.0-amd64-netinst.iso: OK

Install base system, skip creating root user and sudo should be the automagic default. When asked for additional stuff only select *standard system utilities* and *SSH server* if you so wish.

Boot into cli, install/configure git, sed, vim

    sudo apt install git apt-transport-https sed vim
    git config --global core.editor "vim" # optional

get stretchbang git and apply configs

    cd && mkdir source && cd source
    git clone https://github.com/brontosaurusrex/stretchbang
    cd stretchbang
    git config credential.helper store # optional
    # git checkout 01   # optionally checkout version tagged as 01
    ./overwriteConfigs  # copy user stuff, themes, fonts, icons ...
    ./fixPaths          # in .wbar and .Xresources
    ./makeUserDirs      # mkdir documents downloads images ...

sources.list with some https power

    sudo cp -b ect/apt/sources.list /etc/apt
    sudo apt update && sudo apt dist-upgrade

Network-manager

    cd source/stretchbang
    sudo cp -b etc/network/interfaces /etc/network

[https://wiki.debian.org/NetworkManager](https://wiki.debian.org/NetworkManager)

Install packages

    cd ~/source/stretchbang/packs
    sudo apt install -y $(cat base.list)
    sudo apt install -y --no-install-recommends \
    $(cat baseNoInstallRec.list)
    sudo apt install -y $(cat extra.list) # libre, gimp, inkscape
    # or run
    sudo ./installAll # or
    sudo ./installLess
    systemctl reboot

Should now boot into lightdm / openbox.

[Virtual box guest additions.](https://virtualboxes.org/doc/installing-guest-additions-on-debian/)

---

# Themes, icons, fonts
Arc-Darker for 'Widget', Arc-Dark_ob_border for 'Window Border' in lxappearance. 'Papirus GTK' for icons. Cuprum is the font.

# wbar

    sudo apt install --no-install-recommends wbar wbar-config
    sudo rm /etc/xdg/autostart/wbar.desktop # start wbar in ob autostart

- wbar does not autohide and will not take place on desktop < fix it with some openbox margins (bottom in this case)
- wbar does not behave very friendly in multi-monitor enviroments.
- wbar config is local floating point character dependent

The easiest way to reload wbar is right-clicking it.

# Compile new version of tint2

This is optional, either run *~/source/stretchbang/compileTint2* or

Install dependencies  
[https://gitlab.com/o9000/tint2/wikis/Install#dependencies](https://gitlab.com/o9000/tint2/wikis/Install#dependencies)

    cd ~/source
    git clone https://gitlab.com/o9000/tint2.git
    cd tint2
    # checkout if you want specific version, see page
    mkdir build && cd build
    # sudo apt install cmake
    cmake ..
    make
    # make a soft link in ~/bin,
    # at next login the new tint2 will be started
    ln -s ~/source/tint2/build/tint2 ~/bin/tint2

# Expected behaviour

## printVolCont in tint2
*~/bin/printVolCont* is something that can be used to control ALSA master volume, alternative would be volumeicon-alsa.

## Install firefox addons

    # ./firefoxAddons # or
    cd ~/tmp || exit
    # wget and install uBlock and Scrollbar anywhere
    wget https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi
    wget https://addons.mozilla.org/firefox/downloads/latest/scrollbaranywhere/addon-292702-latest.xpi
    firefox-esr *.xpi
    # yes, yes, restart

## geany
[![geany.png](https://cdn.scrot.moe/images/2017/08/01/geany.png)](https://cdn.scrot.moe/images/2017/08/01/geany.png)

## openbox menu and pipe script
Static menu with a dynamic twist (powered by *~/bin/pipeMisc*).

![menu]({{site.baseurl}}/media/stretchMenu.png)

# Basic hotkeys

    alt +
    y,x     left/right half
    c       center window x
    v       full width, quite some height
    m       move to next monitor

    meta +
    f11     fullscreen
    f12     toggle compton # ~/bin/toggleCompton

    meta + alt +
    c       center window x and y

    Run *shortcuts* in terminal for more.

# Aliases and ~/bin scripts

*fsize 18*      # set urxvt font size  
*weather*       # weather  
*today*         # small weather  
*pipeSysInfo*   # extremly basic sysinfo  
*bronto*        # asci brontographics  
*easyfind file* # find files using find/grep  
*duh*           # ncdu's lil brother - disk space usage  
*lst*           # ls by date  
*up*            # apt update/upgrade  
*search*        # apt-cache search  

# Bleeding edge

## libreoffice (from backports)

    sudo apt install -t stretch-backports libreoffice libreoffice-gtk3
    # xy = language code you want
    sudo apt install -t stretch-backports libreoffice-l10n-xy myspell-xy
    # optional icon theme
    sudo apt install -t stretch-backports libreoffice-style-breeze

## tilix (from backports)

    sudo apt install -t stretch-backports tilix
    cd .config/tilix
    # to use stretchbang config
    dconf load /com/gexperts/Tilix/ < tilix.dconf
    # or run the provided script.

## gimp 2.9.x (appimage)

[https://discuss.pixls.us/t/community-built-software/2137](https://discuss.pixls.us/t/community-built-software/2137)

## mpv

    sudo apt install libncurses5-dev liblua5.1-0.dev devscripts equivs
    cd ~/source
    git clone https://github.com/mpv-player/mpv-build && cd mpv-build
    # rm any old mpv-build(TAB)
    mk-build-deps
    sudo dpkg -i mpv-build-deps(TAB).deb
    sudo apt-get install -f
    # ./use-mpv-release
    ./rebuild -j4
    ln -s ~/source/mpv-build/mpv/build/mpv ~/bin/mpv

## adapta (theme)

[https://github.com/adapta-project/adapta-gtk-theme](https://github.com/adapta-project/adapta-gtk-theme)

    sudo apt install autoconf automake libgdk-pixbuf2.0-dev libglib2.0-dev libsass0 libxml2-utils pkg-config sassc parallel
    cd ~/source
    git clone https://github.com/adapta-project/adapta-gtk-theme
    cd adapta(TAB)
    ./autogen.sh --enable-parallel --disable-gnome
    make
    sudo make install

Left aligned window titles in openbox

    # example:
    cd /usr/share/themes/Adapta-Nokto/openbox-3
    sudo sh -c 'echo "window.label.text.justify: left" >> themerc'

[Keeping firefox-esr bright.](https://brontosaurusrex.github.io/2017/08/23/per-app-theme)

# Autologin

    sudo vi /etc/lightdm/lightdm.conf
    # under [Seat:*] enable
    autologin-user=yourUserName

# Comments?

[https://github.com/brontosaurusrex/stretchbang/issues](https://github.com/brontosaurusrex/stretchbang/issues)  

<a href="/"><img src="{{site.baseurl}}/public/bronto.png" style="-moz-transform: scaleX(-1); -o-transform: scaleX(-1); -webkit-transform: scaleX(-1); transform: scaleX(-1); filter: FlipH;"></a>

# TOC

* TOC
{:toc}
