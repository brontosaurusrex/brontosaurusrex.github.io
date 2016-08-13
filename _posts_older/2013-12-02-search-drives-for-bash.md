---
id: 2860
title: search drives for files with string (os x bash)
date: 2013-12-02T11:45:54+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2860
permalink: /2013/12/search-drives-for-bash/
categories:
  - Uncategorized
---
usage:
  
metafind string
  
or
  
metafind &#8220;string with spaces&#8221;

in sequence;

<pre>#!/bin/bash

dirs=( "/Volumes/PROMOCIJA" "/Volumes/Disk1" "/Volumes/Disk2" "/Volumes/Disk3" "/Volumes/Disk4" "/Volumes/Disk5" "/Volumes/Disk6" "/Volumes/Disk7" "/Volumes/GRAFIKA" )

for i in "${dirs[@]}"
do

echo searching "$i"
find "$i" | grep -i -s -e "$@"

done

exit</pre>

all at once;

<pre>#!/bin/bash

trap 'kill $(jobs -p)' EXIT

dirs=( "/Volumes/PROMOCIJA" "/Volumes/Disk1" "/Volumes/Disk2" "/Volumes/Disk3" "/Volumes/Disk4" "/Volumes/Disk5" "/Volumes/Disk6" "/Volumes/Disk7" "/Volumes/GRAFIKA" )

for i in "${dirs[@]}"
do

echo searching "$i"
find "$i" | grep -i -s -e "$@" &




done

wait

exit</pre>