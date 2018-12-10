---
published: true
layout: post
date: '2018-12-10 13:54 +0100'
title: Desktop as pipe menu?
---
A start

    #!/bin/bash
    
    where=$(xdg-user-dir DESKTOP)
    echo "$where"
    
    # more
    
Launch .desktop (gtk-launch?)

[https://askubuntu.com/questions/5172/running-a-desktop-file-in-the-terminal](https://askubuntu.com/questions/5172/running-a-desktop-file-in-the-terminal)

More

    #!/bin/bash

    # Desktop in pipe menu

    where=$(xdg-user-dir DESKTOP)

    cd "$where" || exit

    for stuff in *
    do
        if [[ -f $stuff ]]; then
            echo "$stuff is file"
        elif [[ -d $stuff ]]; then
            echo "$stuff is dir"
        fi
    done

    # And so on ...

