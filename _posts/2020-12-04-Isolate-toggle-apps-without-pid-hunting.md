---
published: true
layout: post
date: '2020-12-04 10:57'
title: Isolate-toggle apps without pid hunting
tags: bash 
---
[https://forums.bunsenlabs.org/viewtopic.php?pid=108783#p108783](https://forums.bunsenlabs.org/viewtopic.php?pid=108783#p108783)

example wbar2

    trap 'kill $(jobs -p) >/dev/null 2>&1' EXIT
    # kills stuff it started on exit ^
    # your custom wbar start here

so toggle script could be

    #!/bin/bash
    if pgrep -f wbar2> /dev/null; then
        pkill -f wbar2
    else
        wbar2
    fi
