---
published: true
layout: post
date: '2019-07-15 21:35'
title: Buster sources.list example
tags: linux mine
---
    # apt install apt-transport-https 
    deb https://deb.debian.org/debian/ buster main contrib non-free
    deb-src https://deb.debian.org/debian/ buster main contrib non-free

    deb https://deb.debian.org/debian/ buster-updates main contrib non-free
    deb-src https://deb.debian.org/debian/ buster-updates main contrib non-free

    deb https://deb.debian.org/debian/ buster-proposed-updates main contrib non-free
    deb-src https://deb.debian.org/debian/ buster-proposed-updates main contrib non-free

    # not sure if this two are needed (they seem to work with http)
    #deb http://security.debian.org/ buster/updates main contrib non-free
    #deb-src http://security.debian.org/ buster/updates main contrib non-free

    # backports
    deb https://deb.debian.org/debian buster-backports main contrib non-free

    # virtualbox
    deb [ arch=amd64 ] https://download.virtualbox.org/virtualbox/debian bionic contrib

    # ---
    # disabled:
    #kivy https://kivy.org/doc/stable/installation/installation-linux.html
    #deb https://ppa.launchpad.net/kivy-team/kivy/ubuntu xenial main
    #deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main
