---
published: true
layout: post
date: '2021-07-21 21:32'
title: Bullseye sources.list
tags: linux 
---

    ### apt install apt-transport-https ###
    deb https://deb.debian.org/debian/ bullseye main contrib non-free
    #deb-src https://deb.debian.org/debian/ bullseye main contrib non-free

    deb https://deb.debian.org/debian/ bullseye-updates main contrib non-free
    #deb-src https://deb.debian.org/debian/ bullseye-updates main contrib non-free

    deb https://deb.debian.org/debian/ bullseye-proposed-updates main contrib non-free
    #deb-src https://deb.debian.org/debian/ bullseye-proposed-updates main contrib non-free

    # security
    deb https://security.debian.org/debian-security bullseye-security main contrib non-free

    # backports
    deb https://deb.debian.org/debian bullseye-backports main contrib non-free

