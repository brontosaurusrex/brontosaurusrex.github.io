---
published: true
layout: post
date: '2026-02-17 18:31'
title: How many times is it mentioned?
tags: misc 
---

    curl https://www.gutenberg.org/cache/epub/10/pg10.txt > bible.txt

    cat bible.txt | grep -o -i -w GOD | wc -l 
    4472
