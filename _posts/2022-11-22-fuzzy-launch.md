---
published: true
layout: post
date: '2022-11-22 00:48'
title: Fuzzy launch
tags: cli bash 
---
<s>Fuzzy launch v1 (eval is evil)
<pre><code>eval "$(compgen -c | fzy -p "launch >> ")"</code></pre>
</s>
Fuzzy launch v2 (with exploding array, less dangerous)

    unset arr;arr=();arr+=($(compgen -c | fzy -p "launch >> ")) && "${arr[@]}"

 * The not quoting part is important in this case (space being separator for each array member)

Fuzzy cd (cd is not dangerous)

    cd "$(fd -t d -d 1 | fzy)"

 * find directories, max depth 1 and pipe that to fuzzy finder
 * Both fzy and fd are in the Debian repos

Noninteractive fuzzy search history and available commands v1, just list, don't run anything

    echo -n "search history and commands > " && read var && { tail -1000 ~/.bash_history & compgen -c; } | fzy -e "$var" | uniq | head -10 | column

Noninteractive fuzzy search history and available commands v2

    echo -n "search history and commands > " && read var && \
    { { history | awk '{$1=""; print $0;}' | sed 's/^ //g'; } & compgen -c; } \
    | fzy -e "$var" | uniq | head -10 | column

 * Depending on the history config this may fail due to different history format between bash and zsh for example
 * awk removes 1st column and sed removes leading spaces

Links

<https://gist.github.com/wknapik/5101aaea12172eff6ab6b2fb7666143c>  
<https://github.com/jhawthorn/fzy>  

