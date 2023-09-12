---
published: true
layout: post
date: '2016-07-05 11:30 +0200'
title: 'Run something only if something else is running, bash'
---
    #!/bin/bash
    pgrep -x compton
    if [ $? -eq 0 ]; then
      urxvt &
    else
      sleep 5 && urxvt &
    fi 
