---
published: true
layout: post
date: '2019-10-06 13:28'
title: Rename desktop openbox
tags: linux 
---
    # backup
    cd .config/openbox
    cp rc.xml rc.xml.bak
    
    # rename desktop 1 
     xmlstarlet ed --inplace -N o="http://openbox.org/3.4/rc" \
    -u '//o:openbox_config/o:desktops/o:names/o:name[1]' \
    -v one rc.xml
    
    # restart openbox
    openbox --reconfigure # or --restart

    # check if the naming is in place
    wmctrl -d # it's not

Still not there ...

[https://forums.bunsenlabs.org/viewtopic.php?pid=91829#p91829](https://forums.bunsenlabs.org/viewtopic.php?pid=91829#p91829)
