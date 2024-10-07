---
published: true
layout: post
date: '2024-10-07 07:49'
title: Find some text in adobe after effects binary file
tags: linux cli 
---
    strings -a -e b marilyn.aep | grep -i mar

may return

    maraRGB-kameraprofilRGB-Profil f
    maraRGB-kameraprofilRGB-Profil f
    MARILYN

Explanation of the command line:

    strings
    -a or --all
    -e b = encoding type is 16bit Unicode

The rest should be clear from example.
