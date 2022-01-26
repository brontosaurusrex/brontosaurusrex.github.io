---
published: true
layout: post
date: '2022-01-25 09:45'
title: Cli bookmark manager buku - in repos
tags: linux cli
---
[Wiki](https://github.com/jarun/buku/wiki/System-integration).

Search (regex) - seems to be case insensitive

    buku -r thing
    # behaves like *thing*, will find
    # something, things, ect
    
Encrypt, decrypt database

    buku -l
    buku -k
    
Import bookmarks from browsers

    buku --ai
    
List last 3 added

    buku -p -3
