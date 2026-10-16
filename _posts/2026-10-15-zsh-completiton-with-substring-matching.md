---
published: true
layout: post
date: '2026-10-15 20:29 +0000'
title: "Zsh completiton with substring matching"
tags: bash cli 
---
AI wrote this:

## Match anywhere in a filename

Add this to ~/.zshrc, after your existing completion setup:

    zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z} l:|=* r:|=*'

This enables case-insensitive substring completion. For example:

    hx zero<Tab>   → hx GROUND_ZERO.md
    hx fuego<Tab>  → hx 2026-10-14-hyprfuego.md

No need to type the beginning, remember the capitalization, or work around a date prefix. This part uses Zsh’s built-in completion system.

## Pick between matches with fzf-tab

fzf-tab (<https://github.com/Aloxaf/fzf-tab>) adds an interactive fuzzy search menu to Tab completion.

If several filenames contain zero, typing:

    hx zero<Tab>

opens a picker. Keep typing to filter the results, use the arrow keys to choose, and press Enter to insert the filename.

You can also start without a fragment:

    hx <Tab>

Then type something like shapes inside the picker to find a matching file. Enter inserts it; another Enter runs the command. Esc cancels.
