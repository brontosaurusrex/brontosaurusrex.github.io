---
published: true
layout: post
date: '2020-12-24 21:51'
title: Bigdice alias
tags: bash mine 
---
An zsh alias

    alias bdice='repeat 6 clear && figlet $(( RANDOM % 6 + 1 )) && sleep 0.15'

will roll dice with a little animation like movement, and return

      __
     / /_
    | '_ \
    | (_) |
     \___/


