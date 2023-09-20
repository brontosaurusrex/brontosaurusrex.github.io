---
published: true
layout: post
date: '2023-09-20 07:17'
title: Autojump and zsh
tags: cli linux 
---
In Bookworm

    sudo apt install autojump

add this to .zshrc

    # autojump installed with apt
    [[ -s /usr/share/autojump/autojump.zsh ]] && source /usr/share/autojump/autojump.zsh

usage

    j --help
    j -s   # for stats
    j rex  # to visit a previously visited dir that has rex in its name
