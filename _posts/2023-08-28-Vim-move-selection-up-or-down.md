---
published: true
layout: post
date: '2023-08-28 16:56'
title: Vim move selection up or down
tags: misc cli linux 
---
Shift + J or K and the lines or selection will move (normal or visual mode), add to ~/.vimrc:

    " Move visually selected lines up or down in visual or normal mode 
    " (shift + k or j)
    " https://www.youtube.com/watch?v=gNyNm5DsQ88
    nnoremap K :m .-2<cr>==
    nnoremap J :m .+1<cr>==
    vnoremap K :m '<-2<cr>gv=gv
    vnoremap J :m '>+1<cr>gv=gv
