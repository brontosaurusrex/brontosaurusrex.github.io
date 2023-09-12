---
published: true
layout: post
date: "2016-05-25 18:27 +0200"
title: vim screenwriting pago plugin
---
    cd
    mkdir .vim/plugin
    cd .vim/plugin
    
download and copy the plugin from [http://www.vim.org/scripts/script.php?script_id=2447](http://www.vim.org/scripts/script.php?script_id=2447)

add

    :filetype on
    :filetype plugin on
    :au BufRead,BufNewFile *.pago    set filetype=pago 
    
to ~/.vimrc

Use a filename with extension .pago, like test.pago

(And it doesn't work as expected, txt extensions also get screenwriting look ...)

