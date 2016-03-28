---
id: 3226
title: linux my ip on cli (lan und wan)
date: 2014-06-20T20:46:54+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3226
permalink: /2014/06/linux-my-ip-on-cli-lan-und-wan/
categories:
  - Uncategorized
---
myip

<pre>#!/bin/bash

# internal ip
echo -n "internal: "
/sbin/ifconfig $1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}' | head -1

# two ways to get external ip, 2nd runs if first fails only
echo -n "external: "
if curl http://ipecho.net/plain 2>/dev/null; then
    echo
else
   lynx -dump checkip.dyndns.org 2>&1 | awk '{print $4}' | grep ^[0-9] 2>/dev/null
fi

</pre>