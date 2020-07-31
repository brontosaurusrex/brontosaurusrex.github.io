---
published: true
layout: post
date: '2020-07-30 16:12'
title: Windows Terminal Preview
tags: linux bash misc 
---
1. Get one at [github](https://github.com/microsoft/terminal/releases).  
1. Uninstall the one from store, so that this new one becomes wt.exe  
1. Example [config json](/configs/settings.json).  
1. [Fantasque Sans Mono font](https://github.com/belluzj/fantasque-sans).

Can't find an option to disable **cursor blink**. Can't find an option to increase **line height**.

	Alt + Shift + d        splits window.
	Ctrl + Alt + d         closes pane or window.

[![wt.png-jizWdaREmAjWaq8-md](https://images.weserv.nl/?url=https://i.imgur.com/rI2zBZA.png)](https://images.weserv.nl/?url=https://i.imgur.com/Ur2evQn.png) 

Update:

[More themes here.](https://atomcorp.github.io/themes/)

Zenburn

	{
  	"name": "Zenburn",
  	"black": "#4d4d4d",
  	"red": "#705050",
  	"green": "#60b48a",
  	"yellow": "#f0dfaf",
  	"blue": "#506070",
  	"purple": "#dc8cc3",
  	"cyan": "#8cd0d3",
  	"white": "#dcdccc",
  	"brightBlack": "#709080",
  	"brightRed": "#dca3a3",
  	"brightGreen": "#c3bf9f",
  	"brightYellow": "#e0cf9f",
  	"brightBlue": "#94bff3",
  	"brightPurple": "#ec93d3",
  	"brightCyan": "#93e0e3",
  	"brightWhite": "#ffffff",
  	"background": "#3f3f3f",
  	"foreground": "#dcdccc"
	}

There is now very usefull command palette, with some keybindings things get really interesting

    { "command": "toggleFocusMode", "keys": "shift+f11" },
    { "command": "toggleRetroEffect", "keys": "ctrl+d" },
    { "command": "commandPalette", "keys": "ctrl+space" }

[![wtCommandPalette.png-CJQ6Y6oCuBpckGP-md](https://images.weserv.nl/?url=https://i.imgur.com/xRJbwCm.png)](https://images.weserv.nl/?url=https://i.imgur.com/qvWjhq2.png)
