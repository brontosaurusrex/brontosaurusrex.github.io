---
published: true
layout: post
date: '2019-01-22 18:10 +0100'
title: Basic Zsh install and setup
tags:
  - linux
---

    sudo apt install zsh
    zsh # select 2 to populate some basic configuration
    
Edit .zshrc, add

    # mine
    source $HOME/.bash_aliases
    
and change prompt theme to

    prompt walters
    
To be continued ...


Prompt themes

[https://wiki.archlinux.org/index.php/zsh#Prompt_themes](https://wiki.archlinux.org/index.php/zsh#Prompt_themes)

    prompt -l
    prompt walters
    prompt -p
