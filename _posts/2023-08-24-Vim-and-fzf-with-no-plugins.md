---
published: true
layout: post
date: '2023-08-24 18:49'
title: Vim and fzf with no plugins
tags: linux cli
---
See <https://dev.to/pbnj/interactive-fuzzy-finding-in-vim-without-plugins-4kkj>

Add

    " fzf
    " https://dev.to/pbnj/interactive-fuzzy-finding-in-vim-without-plugins-4kkj
    " press <leader> + ff or type :Files to open fzf file search 
    let mapleader = "," " default leader is \
    function! FZF() abort
        let l:tempname = tempname()
        " fzf | awk '{ print $1":1:0" }' > file
        execute 'silent !fzf --multi ' . '| awk ''{ print $1":1:0" }'' > ' . fnameescape(l:tempname)
        try
            execute 'cfile ' . l:tempname
            redraw!
        finally
        call delete(l:tempname)
    endtry
    endfunction
    " :Files
    command! -nargs=* Files call FZF()
    " \ff
    nnoremap <leader>ff :Files<cr>   

to `~/.vimrc`, then use `,ff` or `:Files` to open the new fresh fzf powered 'file manager'.
