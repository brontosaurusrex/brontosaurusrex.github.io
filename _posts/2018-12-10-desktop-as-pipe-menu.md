---
published: true
layout: post
date: '2018-12-10 13:54 +0100'
title: Desktop as pipe menu?
tags:
  - linux
  - mine
  - bash
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
    
 And separate fodlers from files&links
 
     #!/bin/bash

    # Desktop in pipe menu

    where=$(xdg-user-dir DESKTOP)

    cd "$where" || exit

    # fodlers
    for stuff in *
    do
        if [[ -d $stuff ]]; then
                echo "$stuff is dir"
        fi
    done

    # files
    for stuff in *
    do
        if [[ -f $stuff ]]; then
            echo "$stuff is file"
        fi
    done


    # And so on ...
    
 Not particulary efficient with two loops... And some hardcoded xml/pipeMenu code
 
    #!/bin/bash

    # Desktop in pipe menu

    where=$(xdg-user-dir DESKTOP)

    cd "$where" || exit

    # menu head
    echo "<openbox_pipe_menu>"

    # fodlers
    for stuff in *
    do
        if [[ -d $stuff ]]; then
    cat << ITEM
        <item label="$stuff">
            <action name="Execute">
                <execute>thunar '$where/$stuff'</execute>
            </action>
        </item>
    ITEM
        fi
    done

    echo "<separator/>"

    # files & links
    for stuff in *
    do
        if [[ -f $stuff ]]; then
    cat << ITEM
        <item label="$stuff">
            <action name="Execute">
                <execute>thunar '$where/$stuff'</execute>
            </action>
        </item>
    ITEM
        fi
    done

    # menu foot
    echo "</openbox_pipe_menu>"

Call this [pipeDesktop](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/pipeDesktop), put it in ~/bin, chmod +x it.
And add that to .config/openbox/menu.xml like:

    <menu execute="pipeDesktop" id="desktop" label="desktop"/>
    
Done.

![pipeDesktop.md.png](https://images.weserv.nl/?url=https://i.imgur.com/EK9xvue.png)
