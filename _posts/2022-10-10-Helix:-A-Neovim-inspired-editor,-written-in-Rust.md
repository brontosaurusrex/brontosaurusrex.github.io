---
published: true
layout: post
date: '2022-10-10 09:55'
title: Helix, A Neovim inspired editor, written in Rust
tags: linux cli 
---
<https://helix-editor.com/>  
<https://news.ycombinator.com/item?id=33147270>

Promises a neat lsp bash support.  
Will need [latest? nodejs/npm](https://github.com/nodesource/distributions/blob/master/README.md#debinstall), 
the one in debian is too old.

    npm i -g bash-language-server
        
## Notes

The logic is select > action 

### Change working directory and open file picker

    :cd ~/somedir
    SPACE, F
        
### Buffer picker

    SPACE, b
        
### Delete line

    xd
        
### Move line down/up one
    
    Xdp
    Xdkp
        
### There is go menu

    g

### There is no soft-wrap

    :()