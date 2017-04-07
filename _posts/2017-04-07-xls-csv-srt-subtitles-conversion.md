---
published: true
layout: post
date: '2017-04-07 16:40 +0200'
title: xls > csv > srt subtitles conversion
---
In Libreoffice make sure only three columns are there (delete 4th...), save as csv, should look like:

    00:00:51:08,00:00:52:20,"Hello?"
    00:00:52:20,00:00:54:14,"It’s a boat."
    00:00:54:22,00:00:56:09,"They’re shouting."
    
[This seems to do csv > srt](https://gotranscript.com/subtitle-converter) (until I find something offline). Should look like:

    5
    00:00:51,334 --> 00:00:52,834
    Hello?
    
    6
    00:00:52,834 --> 00:00:54,584
    It’s a boat.
    
    7
    00:00:54,918 --> 00:00:56,375
    They’re shouting.
    
The timecode format used is hours:minutes:seconds,milliseconds

[https://en.wikipedia.org/wiki/SubRip](https://en.wikipedia.org/wiki/SubRip)


