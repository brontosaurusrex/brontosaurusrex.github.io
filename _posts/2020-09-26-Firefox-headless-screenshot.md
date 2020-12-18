---
published: true
layout: post
date: '2020-12-18 11:00'
title: Expensive clock (update)
tags: web bash linux luv
---
Take headless screenshot of full page with 1920px width

    firefox --screenshot --window-size=1920 woot.png https://url.com

[expensiveClock](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/expensiveClock) for your term, done by screenshoting [scripted svg](https://www.nayuki.io/page/full-screen-clock-javascript) with firefox and then converting that image to this ascii art.
[![clock.png-LdYAfmEFl8X1ADQ-md](https://images.weserv.nl/?url=https://i.imgur.com/n89l6bhl.png)](https://images.weserv.nl/?url=https://i.imgur.com/n89l6bh.png)

Depending on version of firefox provided with variable

    app=("$HOME/apps/firefox/firefox")
    # for distro provided version one can use
    # app=("firefox")

this is now working on Debian/WSL1, Raspbian-Buster/WSL1 and on Debian running in vbox.