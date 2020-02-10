---
published: true
layout: post
date: '2020-02-10 21:00'
title: Recursive rename the zsh way
tags: linux cli bash mine
---
Example file tree structure

    tree
    #.
    #├── a
    #│   └── __resource.lua
    #├── b
    #│   └── __resource.lua
    #└── c
        #└── __resource.lua

glob ls

    ls **/*__resource.lua
    #a/__resource.lua  b/__resource.lua  c/__resource.lua

echo 'stuff' to them all

    echo "stuff" >> **/*__resource.lua 

    cat a/__resource.lua 
    #stuff
    cat b/__resource.lua 
    #stuff
    cat c/__resource.lua 
    #stuff

zmv is some sort of zsh extension

    autoload zmv # https://blog.thecodewhisperer.com/permalink/renaming-magically-with-zmv

Add another one to tree root, just to make it harder

    touch __resource.lua 
    
The [big rename](http://strcat.de/zsh/#zmv)

    zmv -n '(**/)(*)__resource.lua' '${1}${2}woot.lua'

    #mv -- a/__resource.lua a/woot.lua
    #mv -- b/__resource.lua b/woot.lua
    #mv -- c/__resource.lua c/woot.lua
    #mv -- __resource.lua woot.lua

    # remove -n when ready
