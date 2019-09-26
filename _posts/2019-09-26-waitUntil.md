---
published: true
layout: post
date: '2019-09-26 22:02'
title: waitUntil
tags: linux bash 
---
While this naive code might look interesting it's actaully quite a cpu eater

    #!/bin/bash

    #set -x

    # waitUntil
    # This should run 'thecode' at approximate real-clock minute change.

    update() {
        # minutes from real clock without 0 padding
        oldmin="$(date +%-M)"
        newmin="$oldmin"
        #echo "$newmin"
    }

    waitUntil() {
    while (( oldmin == newmin ))
    do
      sleep 0.3
      newmin="$(date +%-M)"
    done
    }

    thecode() {

        clear
        date +%H%M | toilet -f 3x3
        
    }

    while true
    do

        thecode
        update
        waitUntil

    done

[Some debate.](https://forums.bunsenlabs.org/viewtopic.php?pid=91342)
