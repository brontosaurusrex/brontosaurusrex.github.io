---
published: true
layout: post
date: '2017-01-11 13:13 +0100'
title: specific urxvt transparent
tags: linux mine
---
start with

    urxvt -name transparent -depth 32 -bg rgba:2000/2000/2000/0000 -sh 0
    
And exclude shadows in ~/compton.conf

    shadow-exclude = [

    "name = 'transparent'"

    ];

[![transparentUrxvt.th.png](//cdn.scrot.moe/images/2017/01/11/transparentUrxvt.th.png)](//cdn.scrot.moe/images/2017/01/11/transparentUrxvt.png)
