---
published: true
layout: post
date: '2017-04-17 22:25 +0200'
title: weather in terminal
---
without installing anything

    curl wttr.in
    
[https://github.com/chubin/wttr.in](https://github.com/chubin/wttr.in)  
[https://forums.bunsenlabs.org/viewtopic.php?pid=49270#p49270](https://forums.bunsenlabs.org/viewtopic.php?pid=49270#p49270)

for 3 days with some filtering

    wget wttr.in 2>/dev/null -O - | grep -v 'New feature*\|Follow'
    
today

    wget wttr.in/?0Q 2>/dev/null -O -
    
    # 0 = today
    # Q = real quiet
