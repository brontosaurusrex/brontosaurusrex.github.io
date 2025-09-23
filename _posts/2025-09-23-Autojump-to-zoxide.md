---
published: true
layout: post
date: '2025-09-23 14:37'
title: Autojump to zoxide
tags: linux cli 
---
1. Install zoxide from the page, the curl command  
<https://github.com/ajeetdsouza/zoxide>  
Version in debian 13 is to old to support the import --from command.

2. Import db from autojump

    zoxide import --from=autojump ".local/share/autojump/autojump.txt" --merge

3. in .zshrc add

    # zoxide
    eval "$(zoxide init zsh)"

4. Make sure zoxide is on $PATH, or in .zshrc add

    # /home/b/.local/bin for zoxide
    if [ -d "$HOME/.local/bin" ] ; then
        PATH="$HOME/.local/bin:$PATH"
    fi

5. Alias j to z in .bash_aliases or similar file

    # autojump to zoxide
    alias j='z'

