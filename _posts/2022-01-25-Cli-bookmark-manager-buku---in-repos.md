---
published: true
layout: post
date: '2022-01-25 09:45'
title: Cli bookmark manager buku - in repos
tags: linux cli
---
[Wiki](https://github.com/jarun/buku/wiki/System-integration) & [man](/buku.htm).

Import bookmarks from browsers

    buku --ai

Search (regex) - seems to be case insensitive

    buku -r thing
    # behaves like *thing*, will find
    # something, things, ect
    
Encrypt, decrypt database

    buku -l
    buku -k
    
List last 3 added

    buku -p -3
    
Open bookmark numero 285

    buku -o 285
    
Edit bookmark 285 using geany, comment (that becomes searchable) is possible

    export EDITOR=geany; buku -w 285
