---
published: true
layout: post
date: '2022-11-12 18:12'
title: Wikipedia Current events in terminal
tags: cli bash 
---
Simple

    w3m -dump https://en.wikipedia.org/wiki/Portal:Current_events | less +/"$(date '+%B %d')"

Filtered

    w3m -dump https://en.wikipedia.org/wiki/Portal:Current_events | grep -v -e "^  • edit" -e "^  • watch" -e "^  • history" | cat -s | less +/"$(date "+%B %d")"

Notes: 

* Date match may fail if date lang is different than that of the page in question
* grep -v -e stuff is for excluding certain lines
* cat -s should remove doubled empty lines
* less +/string should search for that string on start

As alias

    alias events='w3m -dump https://en.wikipedia.org/wiki/Portal:Current_events | grep -v -e "^  • edit" -e "^  • watch" -e "^  • history" | cat -s | less +/"$(date "+%B %d")"'
