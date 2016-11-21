---
published: true
layout: post
date: '2016-11-21 09:37 +0100'
title: Download all
---
> Download all files of (a) certain type(s) from a website

all playlist omitting 32 and 24 kbits

    wget -nd -r -l 2 -A pls,PLS,m3u,M3U -R "*32.pls","*24.pls" http://somafm.com/ ; rm robots.txt
    
all images

    wget -nd -r -l 2 -A png http://www.transparenttextures.com/
    
from: [http://dt.iki.fi/download-filetype-website](http://dt.iki.fi/download-filetype-website)
    