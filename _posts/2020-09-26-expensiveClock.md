---
published: true
layout: post
date: '2020-12-27 15:00'
title: Expensive clock
tags: web bash linux luv
---
Take headless screenshot of full page with 1920px width

    firefox --screenshot --window-size=1920 woot.png https://url.com

[ExpensiveClock](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/expensiveClock) for your term, done by screenshoting [scripted svg](https://www.nayuki.io/page/full-screen-clock-javascript) with firefox and then converting that image to this ascii art.
[![clock.png-LdYAfmEFl8X1ADQ-md](https://images.weserv.nl/?url=https://i.imgur.com/n89l6bh.png)](https://images.weserv.nl/?url=https://i.imgur.com/n89l6bh.png)

Depending on version of firefox provided with variable

    app=("$HOME/apps/firefox/firefox")
    # for distro provided version one can use
    # app=("firefox")

this is now working on Debian/WSL1, Raspbian-Buster/WSL1 and on Debian running in vbox.

Update: Option -d will now also generate [digital clock](/digitalClock.htm).  
[![digital.png-xWeQWdnn5qKBY6F-md](https://images.weserv.nl/?url=https://i.imgur.com/YGioxd8.png)](https://images.weserv.nl/?url=https://i.imgur.com/YGioxd8.png)