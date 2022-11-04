---
published: true
layout: post
date: '2018-07-04 22:41 +0200'
title: exa a modern replacement for ls written in rust
tags:
  - linux
  - cli
---
[https://the.exa.website/docs/colour-themes](https://the.exa.website/docs/colour-themes)

Install

	sudo apt install libhttp-parser2.1

then unpack/rename [this](https://the.exa.website/#installation) to ~/bin/exa

![exa-fs8.png]({{site.baseurl}}/media/exa-fs8.png)

2022 edit:

Nice replacement for my 'lst' alias

    # before
    alias lst='ls -clhtr'
    # after
    alias lst='exa --sort modified -la --icons --no-permissions'
