---
published: true
layout: post
date: '2017-07-03 09:41 +0200'
title: 'Debian, list backports'
tags: linux cli
---
## list

from [https://askubuntu.com/questions/313806/how-to-list-available-backport-upgrades](https://askubuntu.com/questions/313806/how-to-list-available-backport-upgrades)

list installed packages that have available backport upgrades

    aptitude search '?and(~i, ~Araring-backports)'

list all available backport packages (installed or not)

    aptitude search '~Abackports ?not(~S ~i ~Abackports)'
    
## stretch sources.list line

    # stretch backports
    deb https://deb.debian.org/debian stretch-backports main
