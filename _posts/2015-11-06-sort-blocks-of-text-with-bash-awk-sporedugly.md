---
id: 3938
title: 'sort blocks of text with bash awk &#8211; sporedUgly'
date: 2015-11-06T19:23:39+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3938
permalink: /2015/11/sort-blocks-of-text-with-bash-awk-sporedugly/
categories:
  - Uncategorized
---
`awk -v RS= -F '\n' '{num=$3; sub(/@SORT_NUMBER=/,"",num); array[num]=$0} END {print "I - can't be bothered looking up asort in manual. Try #awk for the remainder"}'`