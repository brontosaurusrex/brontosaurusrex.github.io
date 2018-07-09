---
published: true
layout: post
date: '2018-07-09 22:39 +0200'
title: Start something in tmux at boot
tags:
  - linux
  - crypto
---
Start tmux session with htop running and detach

    tmux new -s mine -d htop
    
In crontab this would look like

    # crontab -e
    @reboot tmux new -s mine -d htop