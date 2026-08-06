---
published: true
layout: post
date: '2018-03-09 16:20 +0100'
title: beep on folder change
tags:
  - linux
  - bash
---
    #!/bin/bash

    # watchFolder

    while true
    do
           touch  ./lastwatch
           sleep 5
           find "$HOME/tmp/" -name *.wav -cnewer ./lastwatch -exec beepspeakers 1 {} \;
    done
    
Without using inotify. Script is stolen from the internet (and I can't find link anymore). [beepspeakers script here](https://github.com/brontosaurusrex/stretchbang/blob/master/bin/beepspeakers).
