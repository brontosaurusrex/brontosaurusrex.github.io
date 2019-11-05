---
published: true
layout: post
date: '2019-10-29 17:34'
title: Autocutsel (in repos)
tags: linux 
---
This in autostart:

    autocutsel -fork
    
should sync some of the clipboards.

> autocutsel tracks changes in the server’s cutbuffer and clipboard selection. When the clipboard is changed, it updates the cutbuffer. When the cutbuffer is changed, it owns the clipboard selection
