---
published: true
layout: post
date: '2024-05-08 15:06'
title: entr - Do something when things change
tags: cli bash linux 
---
Print 'boo' when dir content changes (WSL):

    ENTR_INOTIFY_WORKAROUND="true" ls | entr -s 'echo "boo"'

[https://github.com/clibs/entr](https://github.com/clibs/entr)
