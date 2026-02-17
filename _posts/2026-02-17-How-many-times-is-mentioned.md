---
published: false
layout: post
date: '2026-02-17 18:31'
title: How many times is it mentioned?
tags: misc 
---

    curl https://www.gutenberg.org/cache/epub/10/pg10.txt > bible.txt

    cat bible.txt | grep -o -i god | wc -l
    4787

    cat bible.txt | grep -o -i jesus | wc -l
    984

    cat bible.txt | grep -o -i devil | wc -l 
    117

    cat bible.txt | grep -o -i noah | wc -l
    77

    cat bible.txt | grep -o -i beast | wc -l 
    337

    cat bible.txt | grep -o -i cat | wc -l   
    539

    cat bible.txt | grep -o -i dog | wc -l   
    41

    cat bible.txt | grep -o -i cow | wc -l   
    7
