---
layout: page
title: Debian
published: true
---

## apt and dpkg

### list files in package

    dpkg-query -L package
    # or if not installed
    apt-file list package

### search

    apt-cache search string
    # alias 'search' in stretchbang

    aptitude search '?and(~i, ~Araring-backports)'
    # list installed with backport upgrades

    aptitude search '~Abackports ?not(~S ~i ~Abackports)'
    # list all available backport packages (installed or not)

### version

    apt-cache policy packname
    # or just
    apt-cache policy
    # some sort of repository status

### update / upgrade

    sudo apt update && sudo apt dist-upgrade
    # alias 'up' in stretchbang

### install from backports

    sudo apt install -t stretch-backports packname

### install with no recommends

    sudo apt install --no-install-recommends packname
    # only the main dependencies (packages in the Depends field) are installed.

### clean stuff

    sudo apt autoremove # removes unused deps
    sudo apt autoclean  # clears downloaded cache
    
### DontBreakDebian

[https://wiki.debian.org/DontBreakDebian](https://wiki.debian.org/DontBreakDebian)

## SysInfo

### ram

    sudo /usr/sbin/dmidecode --type memory

### general

    inxi -F -c 0
