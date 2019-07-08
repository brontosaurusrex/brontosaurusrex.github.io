---
published: true
layout: post
date: '2019-07-08 10:59'
title: Romantic story about Vim
tags: 
---
[https://medium.com/commitlog/why-i-still-use-vim-67afd76b4db6](https://medium.com/commitlog/why-i-still-use-vim-67afd76b4db6)

> And no, it’s not because I can’t figure out how to close it.

### My current .vimrc

    " ignore case when /searching
    set ignorecase 
    " set number
    syntax on
    set ruler
    set mouse=a

    " Search as you type.
    set incsearch

    " things that clutter git
    set nobackup
    set noswapfile

    " ident
    set tabstop=4 shiftwidth=4 expandtab

    " f10 to go to end of line (so you have 0 and F10)
    nmap <F10> $

    " clipboard ? 
    " http://vim.wikia.com/wiki/Accessing_the_system_clipboard
    " ...to obtain clipboard support install the packages vim-gtk or vim-gnome 
    set clipboard=unnamedplus
