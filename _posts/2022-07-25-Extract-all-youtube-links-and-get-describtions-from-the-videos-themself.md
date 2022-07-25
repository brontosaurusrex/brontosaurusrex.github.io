---
published: true
layout: post
date: '2022-07-25 12:47'
title: Extract all youtube links from page and get describtions from the videos themself
tags: misc cli bash luv mine
---
<https://news.ycombinator.com/item?id=32220192>

    # get page to disk
    curl "https://news.ycombinator.com/item?id=32220192" --output curl.htm
    # filter stuff to only youtube like urls
    cat curl.htm | grep -Po '(?<=href=\")[^\"]*(?=\")' | grep you | sed 's/&#x2F;/\//g' | sort -u > woot.htm


get descriptions from yt itself, using yt-dlp (and perhaps thumbnail links?)
