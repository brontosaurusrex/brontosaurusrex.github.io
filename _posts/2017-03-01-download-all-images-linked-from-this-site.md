---
published: true
layout: post
date: '2017-03-01 19:55 +0100'
title: Download all images linked from this site
---
    # download all images from this site (tested on OSX)
    # cd to _site dir where your markdown files should be first
    out="/Volumes/raid0/dl/siteImages/"
    cat * | grep -E '.png|.jpg|.jpeg' | \
    grep -Eo '(https?|http)://[^ ")]+' | \
    grep -Ev '.th.|b.pwnz|shrani.si\/t\/' | \
    wget -N -i - -P "$out"

This is a single line, but terminated with backslashes for better readability. First cd to local copy of this site, which has all this markdown files. 2nd, set the $out to something that exist. 

then multiple greps are piped to wget and magic happens.

This could be vastly improved, also it is probably not very robust (time will tell).