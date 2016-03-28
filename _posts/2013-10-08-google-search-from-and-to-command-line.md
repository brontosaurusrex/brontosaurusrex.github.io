---
id: 2721
title: google search from and to command line
date: 2013-10-08T01:48:14+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=2721
permalink: /2013/10/google-search-from-and-to-command-line/
categories:
  - Uncategorized
---
<http://crunchbang.org/forums/viewtopic.php?pid=336542#p336542>

<pre>#!/bin/bash
# simple google searcher put together by brontosaurusrex, 
# inspired by photonucleon
# and https://github.com/borisguery/Gisele (gisele.phar exe)

# install:
# a. put gisele.phar into ~/bin
# b. name this script "google", put it into ~/bin and chmod +x it

# required:
# php5-cli curl php5-curl


for var in "$@"
do
    echo "$var"
    php ~/bin/gisele.phar web "$var" -m 10
    

done

</pre>