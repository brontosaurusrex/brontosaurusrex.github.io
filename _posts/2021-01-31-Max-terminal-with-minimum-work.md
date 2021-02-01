---
published: true
layout: post
date: '2021-01-31 15:43'
title: Max terminal with Min work
tags: mine misc linux cli 
---
# zsh

    sudo apt install zsh

Restart terminal, select option 2 after relauch, this gives you nice autocompletion already out of the zsh box.

## autosuggestions

    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    
Add this lines to .zshrc

    # autosuggestions
    # https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# starship prompt

a. Configure terminal to use some of the [nerd font](https://www.nerdfonts.com/font-downloads), I like 'FantasqueSansMono Nerd Font'.

b. Follow [the curl](https://starship.rs/guide/#%F0%9F%9A%80-installation) and add the lines to .zshrc again

    # starship
    eval "$(starship init zsh)"

c. configure starship

    cd && mkdir .config
    vi starship.toml

and paste

    [cmd_duration]
    min_time = 10000
   
# Other stuff in .zshrc

### Add ~/bin to path

    # user ~/bin
    if [ -d "$HOME/bin" ] ; then
        PATH="$HOME/bin:$PATH"
    fi

### fzf (very optional)

    # fzf /usr/share/doc/fzf/README.Debian (ctrl+R and ctrl+T)
    file="/usr/share/doc/fzf/examples/key-bindings.zsh"
    if [ -f "$file" ]; then
        source "$file"
    fi

and

    apt install fzf

### Include .bash_aliases 

    # .bash_aliases
    file="$HOME/.bash_aliases"
    if [ -f "$file" ]; then
        source "$file"
    fi    

.bash_aliases

    alias ls='ls --color=auto'
    alias lst='ls -clhtr'
    alias up='sudo apt update && sudo apt full-upgrade -y'
    alias mi='mediainfo'
    alias htop='htop -C'
    alias search='apt-cache search'
    alias space2u="rename 's/ /_/g'"
    alias dice='echo $(( RANDOM % 6 + 1 ))'
    alias clock="tty-clock -C 4 -c -f ''"
    alias fd='fdfind'

and

    apt install mediainfo htop rename tty-clock fd-find

### remove bg colors in ls

    # remove background colors
    LS_COLORS=$LS_COLORS:'tw=00;33:ow=01;34:'; export LS_COLOR

# min .vimrc

    cd && wget https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.vimrc
   
