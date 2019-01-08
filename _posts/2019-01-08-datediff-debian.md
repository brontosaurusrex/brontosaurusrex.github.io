---
published: true
layout: post
date: '2019-01-08 17:44 +0100'
title: datediff (Debian)
tags:
  - linux
  - cli
---
    sudo apt install dateutils
    
    # help
    info dateutils
    
    # diff between now and some future date
    dateutils.ddiff now 2025-01-29 -f '%Y years %d days'