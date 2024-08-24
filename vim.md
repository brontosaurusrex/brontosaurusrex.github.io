---
layout: page
title: vim learning notes
published: true
---
Last update: 25. 8. 2023

## help

Show help in top window or left window

    help leader
    vert help leader

change window focus

    ctrl+ww

change ordering

    ctrl+wr

## .vimrc quicky

[~/.vimrc](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.vimrc)

## copy/paste

Debian/openbox/urxvt/vim8

    apt install vim-gtk # vim-gtk3
    ctrl+alt+v < should now work to paste stuff from other clipboard, or
    middle-mouse-button < paste behaves differently
    "+p < paste from other clipboard 
    "+gp < this horror should paste as well
    "+yy < copy current line
    "+y20 < copy this and 20 lines below
    :help "+ < actually finds clipboard related help

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

make each buffer appear in tab

    :tab sball

## buffers

    :buffers or :ls < list buffers
    :bi < jump to buffer i, where i is buffer number
    :bn :bp < next, previous buffer

[Buffers, windows, and tabs](https://sanctum.geek.nz/arabesque/buffers-windows-tabs/)  

## netrw - default dir browser can do a lot

    :Explore
    :Sexplore or :Sex < in horizontal split
    :Vexplore < in vertical split
    :Texplore < in new tab

[configure explorer in .vimrc](https://shapeshed.com/vim-netrw/#netrw-the-unloved-directory-browser)  

## search/replace

    /pattern
    ?pattern < backward
    n N < repeat
    * < search for word under cursor
    :%s/old/new/g < replace
    :%s/old/new/gc < with confirmations

[cheetsheet](http://www.worldtimzone.com/res/vi.html)

## obvious

    gg < goto start of file
    G < goto end of file
    end, home < end, start of line (also 0 and $)
    i, o < insert or insert on next line
    a < insert after selected char
    dw < delete word
    ci+brackets < delete stuff inside brackets
    :w < write
    :wq < write and quit
    :q < quit
    :q! < quit without saving
    di( < delete inside ()

    b < to go to beginning of current or previous word
    w < to go the beginning of next word
    e < to go to the end of current or next word
    ge < to go the end of the previous word
    # Try :h word-motions for more details and how to combine them with operations.

## less obvious

    ggVG < select contents of entire file
    U < selected text to UPPERCASE                                           
    u < selected text to lowercase                                     
    :retab < convert tabs to spaces 

## autocomplete

In insert mode start typing something and then

    ctrl+n

## Indent (not ident)

In insert mode

    ctrl+t < insert indent at start of line
    ctrl+d < remove indent at start of line

In normal mode

    >> < indent line by shiftwidth spaces
    << < deindent line 
    3>> < indent 3 lines

In visual mode, select lines and >>

[Click for more](https://stackoverflow.com/questions/235839/indent-multiple-lines-quickly-in-vi)

## windows

    :split < horizontal
    :vsplit < vertical    
    ctrl+w+j < move down a screen
    ctrl+w+k < up
    ctrl+w+h < left
    ctrl+w+l < right    
    :only < close others

## read/insert a file or command output into current

    :0r !ls < insert output of ls before 0 line
    :0r !head ~/bin/somescript < similar
    :r < below the cursor
    :$r !pwd < below the last line

[http://vim.wikia.com/wiki/Insert_a_file](http://vim.wikia.com/wiki/Insert_a_file)

## snippets

[https://brigade.engineering/sharpen-your-vim-with-snippets-767b693886db](https://brigade.engineering/sharpen-your-vim-with-snippets-767b693886db)

## not a snippet

Just insert head part of say previous file that will now act as a template

    :r !head previous_file

## to shell and back again

    ctrl+z, fg < will push vim to bg, fg in shell will bring it back

[link](http://stackoverflow.com/questions/1879219/how-to-temporarily-exit-vim-and-go-back)

or

    :shell or just :sh "do your shell stuff" then 
    exit

insert output of the shell command to the current document

    :r ! ls

## Bang

One can also execute commands directly from the editor

    :! python %

will run the active (must be saved) file with python interpreter.

## Debian

vi and vim are the same, they are symbolic links to 

    /usr/bin/vim.basic

vi and vim are the same on OSX as well.

## latest vim on OSX

    brew install vim # brew update && brew upgrade # before that if needed
    # should install in /usr/local/bin/vim
    # do a softlink in user bin if defined and on $PATH, like
    cd $HOME/bin
    ln -s /usr/local/bin/vim vim # that should now call brew installed vim in the future sessions

## vim 8 and plugins

[https://shapeshed.com/vim-packages](https://shapeshed.com/vim-packages)

## books

 - [A Byte of Vim](https://vim.swaroopch.com/)

## Resources

q: [https://stackoverflow.com/questions/](https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118)
a: [Your problem with Vim is that you don't grok vi.](https://gist.github.com/nifl/1178878)  


