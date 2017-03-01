---
published: true
layout: post
date: '2017-03-01 19:55 +0100'
title: Download all images linked from this site
---
    # download all images from this site (tested on OSX)
    # cd to _site dir with your markdown files
    # and configure this output dir
    out="/Volumes/raid0/dl/siteImages/"
    cat * | grep -E '.png)$|.jpg)$|.jpeg)$|.gif)$' | \
    grep -Eo '(https?|http)://[^ ")]+' | \
    grep -Ev '.th.|b.pwnz|shrani.si\/t\/' | \
    wget -N -i - -P "$out"

Multiple greps are piped to wget and magic happens. Images hosted on the git/page itself are ignored.

    FINISHED --2017-03-01 20:13:43--
    Total wall clock time: 7m 23s
    Downloaded: 195 files, 387M in 6m 1s (1.07 MB/s)