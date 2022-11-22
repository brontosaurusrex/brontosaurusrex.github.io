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

Links

<https://gist.github.com/wknapik/5101aaea12172eff6ab6b2fb7666143c>  
<https://github.com/jhawthorn/fzy>  

