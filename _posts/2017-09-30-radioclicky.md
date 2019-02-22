---
published: true
layout: post
date: '2017-09-30 12:26 +0200'
title: radioClicky for tint2 and cli
tags: mine cli bash linux
---
git
[https://github.com/brontosaurusrex/radioClicky](https://github.com/brontosaurusrex/radioClicky)

debate, install instructions  
[https://forums.bunsenlabs.org/viewtopic.php?id=4226](https://forums.bunsenlabs.org/viewtopic.php?id=4226)

[![radioClicky.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/09/30/radioClicky.md.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/09/30/radioClicky.png)
[![optionalOpenboxAndConly.md.png](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/10/04/optionalOpenboxAndConly.md.png)](https://images.weserv.nl/?url=//cdn.scrot.moe/images/2017/10/04/optionalOpenboxAndConly.png)

    radioClicky help          # show available switches
    
## dev notes

q: What array type do I need for: "0, url0, description0" type of data structure?  
a: two arrays

q: how to echo stations around current id
a:

    # array=( {a..z} ) id=7 n=3; 
    echo "${array[@]:id-n:1+n*2}"
