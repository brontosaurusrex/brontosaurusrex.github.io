---
published: true
layout: post
date: '2022-12-01 09:37'
title: Disk usage for hoomans - duh
tags: mine cli bash luv 
---
[Duh4](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/bin/duh4) is the 4th version of this trick and it seems the fastest one, to get most speed remove the call to 'other'. 

Even faster variant would be to use [rust dust](https://github.com/bootandy/dust/releases) and alias like:

    alias duh5='dust -c -b -d 1'
    # or more advanced
    alias duh5='dust -c -b -d 1 . | sed "s/[^[:alnum:]+-. ]//g" && df -h .'

(But this will only print stuff when everything is calculated).