---
published: true
layout: post
date: '2017-06-15 23:36 +0200'
title: Openbox pipe menu example
tags: linux bash
---
pipeTest (echo current date/time)

    #!/bin/bash

    var=$(date)

    cat << EOFMENU
    <openbox_pipe_menu>
    <item label="$var" />
    </openbox_pipe_menu>
    EOFMENU
    
and call that from menu.xml like

    <separator/>
    <menu id="pipeTest" label="pipeTest" execute="pipeTest" />
    
(separator optional)



