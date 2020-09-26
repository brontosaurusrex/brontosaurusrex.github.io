---
published: true
layout: post
date: '2019-09-26 22:02'
title: waitUntil
tags: linux bash 
---
### 'Native'

While this naive code might look interesting it's actually quite a cpu eater

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

### Native better

    #!/bin/bash
    
    waitUntil() {
    
        sleep $((60 - $(date +%s) % 60))
    
    }   
    
    thecode() {
    
        date +%H%M | toilet -f 3x3
        
    }

    while true
    do
    
        thecode
        waitUntil
    
    done

### Datetools

Similar, but using [datetools](https://github.com/caronc/datetools)

    #!/bin/bash

    #set -x

    # waitUntil2, using https://github.com/caronc/datetools dateblock
    # This should run 'thecode' at approximate real-clock minute change.

    waitUntil() {

        dateblock -n /1

    }

    thecode() {

        date +%H%M | toilet -f 3x3
        
    }

    while true
    do

        thecode
        waitUntil

    done
    
### Cron

Using cron, lags about 1s

in crontab have

    * * * * * touch /tmp/clock
    
script might look like

    date +%H%M; while inotifywait -qq -e close_write /tmp/clock; do date +%H%M; done


