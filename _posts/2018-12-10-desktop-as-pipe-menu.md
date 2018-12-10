---
published: true
layout: post
date: '2018-12-10 13:54 +0100'
title: Desktop as pipe menu?
---
A start

    #!/bin/bash
    
    where=$(xdg-user-dir DESKTOP)
    echo "$where"
    
    # more