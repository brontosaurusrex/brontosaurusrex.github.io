---
published: true
layout: post
date: '2025-01-09 13:26'
title: XDCAM or not
tags: bash mine cli linux 
---
    
    mediainfo file.mxf | grep 'Commercial' | uniq | awk '{ print $4,$5 }'

could return

    XDCAM HD422

or not.
