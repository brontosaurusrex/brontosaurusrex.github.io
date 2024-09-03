---
published: true
layout: post
date: '2024-09-03 13:37'
title: Vim-go & YouCompleteMe
tags: linux cli 
---
## Vim-go (vim plugin)

[https://github.com/fatih/vim-go](https://github.com/fatih/vim-go)

Use Vim 8 packages method. Make sure .vimrc includes:

    " vim-go https://github.com/fatih/vim-go/wiki/Tutorial#quick-setup
    " No clue what this ˇ is.
    filetype plugin indent on 

Inside vim run 

    :GoInstallBinaries 

To run currently opened go file do:

    :GoRun
    
btw: plain vim equivalent would be

    :!go run %
    
## YouCompleteMe (vim plugin)

[https://github.com/ycm-core/YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) 

> YouCompleteMe is a fast, as-you-type, fuzzy-search code completion, comprehension and refactoring engine for Vim.

This appears to work independently from Vim-go and gives some helpfull autocomplete, scrot:

![youCompleteMe](/media/youCompleteMe.png)






