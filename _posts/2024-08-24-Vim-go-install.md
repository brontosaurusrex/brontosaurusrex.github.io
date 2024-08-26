---
published: true
layout: post
date: '2024-08-24 12:22'
title: Vim-go install
tags: linux cli 
---
[https://github.com/fatih/vim-go](https://github.com/fatih/vim-go)

Use Vim 8 packages method. Make sure .vimrc includes:

    " vim-go https://github.com/fatih/vim-go/wiki/Tutorial#quick-setup
    " No clue what this ˇ is.
    filetype plugin indent on 

Inside vim run 

    :GoInstallBinaries 

To run currently opened go file do:

    :GoRun %
    
btw: plain vim equivalent would be

    :!go run %
    







