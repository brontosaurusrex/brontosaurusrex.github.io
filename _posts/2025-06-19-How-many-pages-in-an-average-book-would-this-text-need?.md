---
published: true
layout: post
date: '2025-06-19 14:14'
title: How many pages in an average book would some.txt need?
tags: misc cli bash 
---
Let's say average words per page is 250-300, averaging to 275, then

    words="$(wc -w < some.txt)"
    echo "$(( words / 275 ))"
