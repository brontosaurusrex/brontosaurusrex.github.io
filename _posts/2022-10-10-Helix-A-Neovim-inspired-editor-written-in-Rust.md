---
published: true
layout: post
date: '2025-10-25 02:00'
title: Helix, A Neovim inspired editor, written in Rust (update)
tags: linux cli 
---
> By starting from scratch we were able to learn from our experience with Vim and make some breaking changes. The result is a much smaller codebase and a modern set of defaults. It's easier to get started if you've never used a modal editor before, and there's much less fiddling with config files.

<https://helix-editor.com>  
<https://docs.helix-editor.com> 

<https://helix-editor.vercel.app/start-here/basics/> < unofficial docs<br>
<https://github.com/stevenhoy/helix-cheat-sheet> < unofficial cheat sheet pdf<br>
<https://news.ycombinator.com/item?id=45784596> < One of hacker news debates

        
## 2023

The logic is select > action
Everything is a selection, jumping word by word with w, also selects the word.

### tutor

    :tutor

### Change working directory and open file picker

    :cd ~/somedir
    SPACE, F

### Open command palette

    SPACE, ?
        
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

A slightly more complete config:  
<https://raw.githubusercontent.com/brontosaurusrex/bucentaur/refs/heads/master/.config/helix/config.toml>

### keyboard shortcuts / keymap

<https://docs.helix-editor.com/keymap.html>

### copy (yank) / paste

    y, p

### copy (yank) / paste to system clipboard

    SPACE + y, SPACE + p

### Goto line 300

    :300

### Multiple cursors

    C and ; to delete last one 

### search command pallete    

    space + ?

Search with bindings

    %b A-c

^ shall find if something is bind to ALT+c.

### Feature or bug? (25.07.1 (a05c151b))

'i' for insert mode, type

    'abc[space][space][return]'.

Go line up and inspect the end of the line, spaces are gone :O.   
