---
published: true
layout: post
date: '2022-11-05 17:53'
title: Tmux fake busy
tags: linux cli mine 
---
[![image-nohash-md](https://i.imgur.com/OVRdoD5l.png)](https://i.imgur.com/OVRdoD5.png)

exa,

    alias lst='exa --sort modified -la --icons --no-permissions'
 
bat, 
JetBrainsMono NF (normal)

Tmux.conf 2022

    # mine

    # set prefix C-a
    unbind C-b
    set-option -g prefix C-a
    bind-key C-a send-prefix

    # start with window 1 (instead of 0)
    set -g base-index 1

    # mouse enabled 
    set -g mouse on

    # startup panes, apply with ctrl+a & r
    bind r source-file ~/.tmux.start

    # status line
    set -g status-justify left
    set -g status-bg default
    set -g status-fg white
    set -g status-position top
    set -g status-right "#{host} %H%M%^b%d%y"

    # border colors (invalid syntax for new tmux version, disabled)
    #set -g pane-border-fg green
    #set -g pane-active-border-fg green
    #set -g pane-active-border-bg default

    # stuff
    set -g pane-border-status top
    set -g pane-border-format " #P: #{pane_current_command} #{?pane_active,█,_} "

    # end mine