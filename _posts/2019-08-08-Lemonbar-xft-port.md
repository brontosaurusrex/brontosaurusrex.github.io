---
published: true
layout: post
date: '2019-08-08 00:52'
title: Lemonbar xft-port
tags: linux cli bash 
---
    
    sudo apt-get install -y libx11-xcb-dev libxcb-randr0-dev libxcb-xinerama0-dev
    # see .travis.yml for more
    git clone https://github.com/krypt-n/bar # xft-port
    cd bar && make
    
### Simple launcher

    echo "%{c}%{A:thunar:}thunar%{A}%{A:geany:} geany%{A} %{A:urxvt:} urxvt%{A}" | lemonbar -b -p -f "Cuprum" |  while read line; do "${line}"; done

This requires compositor (compton) to be running for transparency. Edit: Not working as expected.

### Font Awesome

[https://fontawesome.com/how-to-use/on-the-desktop/setup/getting-started](https://fontawesome.com/how-to-use/on-the-desktop/setup/getting-started)

Examples:

[https://github.com/Estman/Lemonbar/blob/master/bar.sh](https://github.com/Estman/Lemonbar/blob/master/bar.sh)
