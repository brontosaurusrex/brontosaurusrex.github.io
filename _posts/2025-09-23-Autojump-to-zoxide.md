---
published: true
layout: post
date: '2025-09-23 14:37'
title: Autojump to Zoxide
tags: linux cli 
---
## Install zoxide from the page, the curl command
 
<https://github.com/ajeetdsouza/zoxide>  
Version in debian 13 is to old to support the import --from command.

## Import db from autojump

    zoxide import --from=autojump ".local/share/autojump/autojump.txt" --merge

## in .zshrc add

    # zoxide
    eval "$(zoxide init zsh)"

## Make sure zoxide is on $PATH, or in .zshrc add

    # /home/b/.local/bin for zoxide
    if [ -d "$HOME/.local/bin" ] ; then
        PATH="$HOME/.local/bin:$PATH"
    fi

## Alias j to z

in .bash_aliases or similar file

    # autojump to zoxide
    alias j='z'
