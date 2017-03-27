---
layout: page
title: vim learning notes
published: true
---
![vim]({{site.baseurl}}/media/vimClean.png)

## tabs
[http://vim.wikia.com/wiki/Using_tab_pages](http://vim.wikia.com/wiki/Using_tab_pages)  

Open multiple files in tabs:

    vim -p one.txt two.txt three.txt

shortkeys in normal mode

    gt < next
    gT < previous
    {i}gt < go to tab at position i

btw

    :e filename < opens file
    :tabe filename < opens file in new tab
    :qall < close all and exit
    :Texplore < file explorer that will open stuff in new tab

make each buffer appear in tab

    :tab sball

## buffers

    :buffers < list buffers
    :bi < jump to buffer i, where i is buffer number
    :bn :bp < next, previous buffer

## search/replace

    /pattern
    ?pattern < backward
    n N < repeat
    :%s/old/new/g < replace
    :%s/old/new/gc < with confirmations

[cheetsheet](http://www.worldtimzone.com/res/vi.html)

## obvious

    gg < start fo file
    G < end of file
    end, home < end, start of line (also 0 and $)
    i, o < insert or insert on next line
    a < insert after selected char

## to shell and back again

    ctrl+z, fg < will push vim to bg, fg in shell will bring it back

[link](http://stackoverflow.com/questions/1879219/how-to-temporarily-exit-vim-and-go-back)

## Debian

vi and vim are the same, they are symbolic links to 

    /usr/bin/vim.basic

## neovim?

[https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/](https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/)  
[https://neovim.io/doc/user/vim_diff.html#nvim-features](https://neovim.io/doc/user/vim_diff.html#nvim-features)
