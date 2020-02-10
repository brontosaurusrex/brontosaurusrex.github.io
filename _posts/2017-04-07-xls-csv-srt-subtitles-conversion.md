---
published: true
layout: post
date: '2017-04-07 16:40 +0200'
title: xls > csv > srt subtitles conversion
tags: mine video cli
---
## xml to srt

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

## Unknown to srt

Example unknown

    00:00:00:13  00:00:04:08
    *Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.*

    00:00:44:06  00:00:47:03
    At vero eos et accusamus?

    00:00:47:07  00:00:52:24
    Itaque earum rerum hic,
    tenetur a sapiente delectus.

    00:00:53:04  00:00:56:08
    Ex ea commodi consequatur? 
    -Velit esse.

[unkown2srt](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/unknown2srt) script.
