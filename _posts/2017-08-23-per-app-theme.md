---
published: true
layout: post
date: '2017-08-23 11:31 +0200'
title: light theme for firefox
tags: linux web
---
a. This  
[https://unix.stackexchange.com/questions/14129/gtk-enable-set-dark-theme-on-a-per-application-basis](https://unix.stackexchange.com/questions/14129/gtk-enable-set-dark-theme-on-a-per-application-basis)

b. or that

    GTK_THEME=Adapta firefox
    
c. or make *browser* in your ~/bin with something like (assuming we want Adapta, which is a light version of Adapta-Nokto)

    #!/bin/bash

    if cat $HOME/.gtkrc-2.0 | grep Adapta-Nokto ; then
        echo "mkay"
        GTK_THEME=Adapta /usr/bin/firefox "$@"
    else
        echo "just using what's there"
        /usr/bin/firefox "$@"
    fi
    
d. or dev theme, which is dark, but does look reasonable  
[https://addons.mozilla.org/en-US/firefox/addon/devedition-theme-enabler/](https://addons.mozilla.org/en-US/firefox/addon/devedition-theme-enabler/)

All ^ ugly workarounds. What's the global launcher-independent solution?

e. 

	cp /usr/share/applications/firefox-esr.desktop ~/.local/share/applications
    chmod +x # it

Edit exec line (add 'env GTK_THEME=Adapta') to look like

    Exec=env GTK_THEME=Adapta /usr/lib/firefox-esr/firefox-esr %u
    
Then

    update-desktop-database ~/.local/share/applications
    
^ This misses any decision logic, fail as well.

f. [Supposed to work](https://unix.stackexchange.com/questions/14129/gtk-enable-set-dark-theme-on-a-per-application-basis), but doesn't

	GTK_THEME=:light firefox-esr
