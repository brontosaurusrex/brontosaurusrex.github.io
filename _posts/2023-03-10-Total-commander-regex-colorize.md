---
published: true
layout: post
date: '2023-03-10 13:23'
title: Total commander regex colorize
tags: misc mine 
---
Task: Display files ending with mxf or wav and are not older than an hour with different color.  
Solution: configuration/options/Color/Define colors by file type/Add/Define selection  
In 'General' tab, this regex:

    (?i)(?:mxf|wav)$

In 'Advanced' tab: 

    Enable 'Not older than:' 1 hour(s)

Select color, done.
