---
published: true
layout: post
date: '2022-07-25 12:47'
title: Extract all youtube links and get describtions from the videos themself
tags: misc cli bash luv mine
---
<https://news.ycombinator.com/item?id=32220192>

    cat HNyoutube.htm | grep -Po '(?<=href=")[^"]*' | grep "you"
    # or better
    cat HNyoutube.htm | grep -Po '(?<=href=")[^"]*' | grep "you" | sort | uniq

1. cat would be replaced with wget:
2. get descriptions from yt itself, using yt-dlp