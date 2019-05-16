---
published: true
layout: post
date: '2019-05-17 00:49'
title: Get active theme name in openbox
tags: linux cli 
---
    xml2 < $HOME/.config/openbox/rc.xml | grep 'theme/name'

may return

    /openbox_config/theme/name=oomox-tizix_dark
