---
published: true
layout: post
date: '2017-08-26 23:17 +0200'
title: 'exit if no file, bash'
tags: bash
---
Supposedly shortest version, example

    [[ -f /var/log/apt/history.log ]] || exit 0
