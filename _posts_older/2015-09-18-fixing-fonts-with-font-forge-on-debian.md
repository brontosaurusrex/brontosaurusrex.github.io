---
id: 3900
title: fixing fonts with font forge on debian
date: 2015-09-18T18:24:38+00:00
author: bronto saurus
layout: post
guid: http://b.pwnz.org/?p=3900
permalink: /2015/09/fixing-fonts-with-font-forge-on-debian/
categories:
  - Uncategorized
---
a. Move this to appropriate unicode hex locations

`Č 010c<br />
Š 0160<br />
Ž 017d<br />
č 010d<br />
š 0161<br />
ž 017e<br />
| 007c (pipe)`

b. select all + hints/autohint && metric/autowidth

c. export as generatefonts/opentype (cff)