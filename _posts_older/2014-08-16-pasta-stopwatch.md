---
id: 3397
title: pasta stopwatch
date: 2014-08-16T13:00:55+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3397
permalink: /2014/08/pasta-stopwatch/
categories:
  - Uncategorized
---
<pre>#!/bin/bash

# simple pasta countup clock
# needs 'figlet' from repos

# checks
command -v figlet >/dev/null 2>&1 || { echo "apt-get install figlet"; exit 1; } 

date1=`date +%s`; while true; do 

     # clear
     # echo -ne "\r$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)";
     # nice -n 19 toilet -f ascii12 $(echo -ne "\r$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)";);
     # nice -n 19 toilet -f standard $(echo -ne "\r$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)";);

     nice -n 19 figlet -f mono9 $(echo -ne "\r$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)";);


sleep 1

done

</pre>