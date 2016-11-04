---
published: true
layout: post
date: '2016-11-04 11:06 +0100'
title: 'Linux, how old is the system'
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764](https://forums.bunsenlabs.org/viewtopic.php?pid=39764#p39764)

    tune2fs -l /dev/tty 2>/dev/null | awk '{print $3}' # replace that awk with something smarter
