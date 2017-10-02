---
published: true
layout: post
date: '2017-09-30 12:26 +0200'
title: radioClicky for tint2 and cli
---
script  
[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/radioClicky](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/radioClicky)

debate, install instructions  
[https://forums.bunsenlabs.org/viewtopic.php?id=4226](https://forums.bunsenlabs.org/viewtopic.php?id=4226)

[![radioClicky.md.png](https://cdn.scrot.moe/images/2017/09/30/radioClicky.md.png)](https://cdn.scrot.moe/images/2017/09/30/radioClicky.png)

    radioClicky           # show status ( prints / or \ ) 
    radioClicky toggle    # on/off
    radioClicky notify    # notify-send icy-title or stream url
    radioClicky last      # cli print last 12 quasi-unique icy-titles
    radioClicky switch    # next station
    radioClicky switch +  # next station
    radioClicky switch -  # previous station
    radioClicky id        # echo station id, url
    
    
q: What array type do I need for: "0, url0, description0" type of data structure?  
a: two arrays
