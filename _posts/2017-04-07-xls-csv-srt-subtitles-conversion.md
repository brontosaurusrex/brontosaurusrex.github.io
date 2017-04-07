---
published: true
layout: post
date: '2017-04-07 16:40 +0200'
title: xls > csv > srt subtitles conversion
---
## A

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

## B 

In Libreoffice insert one row at the beginning, use formula =ROW(), to get the counter. Export as csv using space as separator and disable " as text enclosures, should look like

    3 00:00:42:16 00:00:44:08 See the strobe on the right, Óscar?
    4 00:00:44:08 00:00:47:01 What?
    - On the right. The strobe, starboard.
    5 00:00:47:14 00:00:48:05 Starboard.
    6 00:00:48:05 00:00:50:24 Yes. Who is it?
    - I don’t know. Come on.
    
This rougly coresponds to Adobe authoring formats, then subtitleeditor (in stretch repos) filename.txt, save as subrip srt. This should also handle timecode to miliseconds conversion. May look like

    1
    00:00:42,640 --> 00:00:44,320
    See the strobe on the right, Óscar?

    2
    00:00:44,320 --> 00:00:47,040
    What?
    - On the right. The strobe, starboard.

    3
    00:00:47,560 --> 00:00:48,200
    Starboard.

    4
    00:00:48,200 --> 00:00:50,960
    Yes. Who is it?
    - I don’t know. Come on.




