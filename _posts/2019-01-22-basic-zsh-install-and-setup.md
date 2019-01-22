---
published: true
layout: post
date: '2019-01-22 18:10 +0100'
title: Basic Zsh install and setup
tags:
  - linux
---

* TOC
{:toc}

## Basics

    sudo apt install zsh
    zsh # select 2 to populate some basic configuration
    
Edit .zshrc, add

    # mine
    source $HOME/.bash_aliases
    
and change prompt theme to

    prompt walters
    
To be continued ...


## Prompt themes

[https://wiki.archlinux.org/index.php/zsh#Prompt_themes](https://wiki.archlinux.org/index.php/zsh#Prompt_themes)

    prompt -l
    prompt walters
    prompt -p
    
Built in prompts are stored in 

    /usr/share/zsh/functions/Prompts
    
It is unclear on how to do user prompt properly, but one can probably paste this to .zshrc (to get walters without the silly underline)

    if [[ "$TERM" != "dumb" ]]; then
        PROMPT='%B%(?..[%?] )%b%n@%m> '
        RPROMPT="%F{${1:-green}}%~%f"
    else
        PROMPT="%(?..[%?] )%n@%m:%~> "
    fi
      prompt_opts=(cr percent)
      
## $PATH

Also somewhere in .zshrc

    # append
    path+=$HOME/bin

## Make Zsh default shell
 
     chsh -s $(which zsh)
