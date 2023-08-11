---
published: true
layout: post
date: '2023-08-11 09:46'
title: Latest nvim and nvchad
tags: cli linux 
---
<https://neovim.io/>

Unpack nvim tarbal to apps/

Write a lil script, named 'neo' or something

	#!/bin/bash
	
	VIMRUNTIME="$HOME/apps/nvim-linux64"
	$HOME/apps/nvim-linux64/bin/nvim "$@"

See: <https://nvchad.com/docs/quickstart/install>

Notes: 

    space + th = change theme
    space + ch = cheetshit
    
Make sure the 'correct' nerd font is installed, in my case 'JetBrainsMonoNL Nerd Font' seems to show all the icons.

Problems:  
When yy it will complain that no clipboard provider is set, opening lua/core/init.lua and typing :so (source current) fixes the problem for the current session. No idea how to debug.

scrot:  
[![image-nohash-th](https://i.imgur.com/K0MG21el.png)](https://i.imgur.com/K0MG21e.png)

Excellent nvchad overview video:  
<https://www.youtube.com/watch?v=Mtgo-nP_r8Y>
