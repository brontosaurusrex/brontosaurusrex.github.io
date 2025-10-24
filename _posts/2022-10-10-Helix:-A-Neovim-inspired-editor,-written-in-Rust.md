---
published: true
layout: post
date: '2023-07-20 09:50'
title: Helix, A Neovim inspired editor, written in Rust (update)
tags: linux cli 
---
<https://helix-editor.com>
<https://docs.helix-editor.com> 
        
## 2023

The logic is select > action 

### tutor

    :tutor

### Change working directory and open file picker

    :cd ~/somedir
    SPACE, F
        
### Buffer picker

    SPACE, b
        
### Delete line

    xd

### Delete 3 lines

Either

    xxxd

or

    3xd    
        
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
[![image](https://thumbs2.imgbox.com/bf/9e/dMxuohkm_t.png)](https://images2.imgbox.com/bf/9e/dMxuohkm_o.png)

### config.toml

.config/helix/config.toml

    theme = "rose_pine_moon"
    [editor]
    true-color = true

^ with urxvt in mind.

## 2025

### Install

There should be amd64.deb here
<https://github.com/helix-editor/helix/releases>

### There is softwrap now

Example .config/helix/config.toml (helix 25.07.1 (a05c151b))

    theme = "catppuccin_macchiato"
    [editor]
    true-color = true

    [editor.soft-wrap]
    enable = true

[![image](https://thumbs2.imgbox.com/12/d2/SXFq4L7f_t.png)](https://images2.imgbox.com/12/d2/SXFq4L7f_o.png)

### keyboard shortcuts / keymap

<https://docs.helix-editor.com/keymap.html>

### copy (yank) / paste

    y, p

### copy (yank) / paste to system clipboard

    space + y, space + p

### Goto line 300

    :300

### Multiple cursors

    C and ; to delete last one 
