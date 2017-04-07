---
published: true
layout: post
date: '2017-04-07 16:40 +0200'
title: xls > csv > srt subtitles conversion
---
![libresubs.png]({{site.baseurl}}/media/libresubs.png)

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

The timecode format used with srt is hours:minutes:seconds,milliseconds

[https://en.wikipedia.org/wiki/SubRip](https://en.wikipedia.org/wiki/SubRip)
