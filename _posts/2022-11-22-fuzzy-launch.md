---
published: true
layout: post
date: '2022-11-22 00:48'
title: fuzzy launch
tags: cli bash 
---
Fuzzy launch (eval is dangerous)

    eval "$(compgen -c | fzy -p "launch >> ")"

Fuzzy cd (cd is not dangerous)

    cd "$(fd -t d -d 1 | fzy)"

 * find directories, max depth 1 and pipe that to fuzzy finder
 * Both fzy and fd are in the Debian repos
