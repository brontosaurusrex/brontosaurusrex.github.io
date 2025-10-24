---
published: true
layout: post
date: '2023-07-20 09:50'
title: Helix, A Neovim inspired editor, written in Rust (update)
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

    :(

EDIT: 22. jun 2023: We have a softwrap now:  
<https://helix-editor.com/news/release-23-03-highlights/>

Fresh build in Debian 12:  
[![image-nohash-md](https://i.imgur.com/9l4oJjxl.png)](https://i.imgur.com/9l4oJjx.png)

### config.toml

.config/helix/config.toml

    theme = "rose_pine_moon"
    [editor]
    true-color = true

^ with urxvt in mind.

## 2025

### There is softwrap now

Example .config/helix/config.toml

    theme = "catppuccin_macchiato"
    [editor]
    true-color = true

    [editor.soft-wrap]
    enable = true
