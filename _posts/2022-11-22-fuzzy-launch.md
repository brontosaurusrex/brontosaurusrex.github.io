---
published: true
layout: post
date: '2022-11-22 00:48'
title: Fuzzy launch, cd, fzf, fzy
tags: cli bash 
---
## launch

<s>Fuzzy launch v1 (eval is evil)
<pre><code>eval "$(compgen -c | fzy -p "launch >> ")"</code></pre>
</s>
Fuzzy launch v2 (with exploding array, less dangerous)

    unset arr;arr=();arr+=($(compgen -c | fzy -p "launch >> ")) && "${arr[@]}"

 * The not quoting part is important in this case (space being separator for each array member)

## cd

Fuzzy cd (cd is not dangerous)

    cd "$(fdfind -t d -d 1 | fzy)"

 * find directories, max depth 1 and pipe that to fuzzy finder
 * Both fzy and fdfind (fd-find) are in the Debian repos

 Fuzzy cd v2 (using fzf instead of fzy)

    cd "$(fdfind -H -L -t d -d 3 | fzf -0 --height=10 --layout=reverse)"
    # alias cdf, or start the search at root
    cd "$(fd -H -L -t d -d 3 . "/" | fzf -0 --height=10 --layout=reverse)"
    # alias cdff

 * find directories, max depth 3 and pipe that to fuzzy finder
 * -H, -L : also show hidden dirs and links
 * fzf with -0 will exit if no data (if no subdirs are found)

## history and commands

Noninteractive fuzzy search history and available commands v1, just list, don't run anything

    echo -n "search history and commands > " && read var && { tail -1000 ~/.bash_history & compgen -c; } | fzy -e "$var" | uniq | head -10 | column

Noninteractive fuzzy search history and available commands v2, just list, don't run anything

    echo -n "search history and commands > " && read var && \
    { { history | awk '{$1=""; print $0;}' | sed 's/^ //g'; } & compgen -c; } \
    | fzy -e "$var" | uniq | head -10 | column

 * Depending on the history config this may fail due to different history format between bash and zsh for example
 * awk removes 1st column and sed removes leading spaces

Making this a function that can function in .bash_aliases as well

    # functions
    comhis () {
        # Noninteractive fuzzy search history and available commands 
        if (( $# )) ; then
            var="$*"
            { { history | awk '{$1=""; print $0;}' | sed 's/^ //g'; } & compgen -c; } \
            | fzy -e "$var" | uniq | head -20 | column
        fi
    }

## Demo

<https://asciinema.org/a/oDodjH9TcVuumN2Ea6w5eWB0z>

## Links

<https://gist.github.com/wknapik/5101aaea12172eff6ab6b2fb7666143c>  
<https://github.com/jhawthorn/fzy>  
<https://jdhao.github.io/2019/06/13/zsh_bind_keys/>  
<https://www.masteringemacs.org/article/keyboard-shortcuts-every-command-line-hacker-should-know-about-gnu-readline>  

## Notes

Adding ctrl+t (interactive search files) and ctrl+r (interactive search history) to zsh, if fzf is installed via repos, add this to ~/.zshrc

    # fzf
    source /usr/share/doc/fzf/examples/key-bindings.zsh

## Digging and binding

    bindkey | grep fzf
    "^R" fzf-history-widget
    "^T" fzf-file-widget
    "^[c" fzf-cd-widget

So it turns out that fzf already comes with some sort of 'cdf'.

## Bindind keys in zsh 

    bindkey -s '^[k' 'cdf\n'    # alt+k
    bindkey -s '^[l' 'launch\n' # alt+l

Magic symbols were found by running 'showkey -a', part of kdb package.

## Links

<https://thevaluable.dev/fzf-shell-integration/>

