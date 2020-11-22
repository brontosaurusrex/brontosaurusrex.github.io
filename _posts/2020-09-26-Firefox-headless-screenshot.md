---
published: true
layout: post
date: '2020-09-26 20:56'
title: Firefox headless screenshot
tags: web 
---
Take headless screenshot of full page with 1920px width

    firefox --screenshot --window-size=1920 woot.png https://url.com

[Expensive ascii clock](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/expensiveClock) for your term, done by screenshoting [scripted svg](https://www.nayuki.io/page/full-screen-clock-javascript) with firefox and then converting that image to this ascii art.
[![clock.png-LdYAfmEFl8X1ADQ-md](https://i.imgur.com/n89l6bhl.png)](https://i.imgur.com/n89l6bh.png)

edit: This seems to only work on headless machines.  
edit2: Latest version with modern version of firefox from their site is working on real linux metal, but not on wsl.
