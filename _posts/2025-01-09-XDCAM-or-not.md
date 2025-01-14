---
published: true
layout: post
date: '2025-01-09 13:26'
title: XDCAM or not
tags: bash mine cli linux 
---
## 1. First try
    
    mediainfo file.mxf | grep 'Commercial' | uniq | awk '{ print $4,$5 }'

could return

    XDCAM HD422

or not.

## 2. Cleaner

    mediainfo --Inform="General;%Format_Commercial_IfAny%" file.mxf

It appears only single field can be requested at one run?