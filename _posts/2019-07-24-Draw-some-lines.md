---
published: true
layout: post
date: '2019-07-24 16:32'
title: Draw some lines
tags: mine
---
[/master/bin/lines](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/lines)

Usage:

    lines lines.png

will generate 1920x1200 image with bunch of lines (useful as some sort of mask).

[![woot.png-MX6fCDPk0bJh3lz-md](https://images.weserv.nl/?url=https://i.imgur.com/CVopsv5l.png)](https://images.weserv.nl/?url=https://i.imgur.com/CVopsv5.png)

Additional destruction

    convert lines.png -virtual-pixel tile -auto-level -scale 10% -statistic Mode 10 -colorspace gray -auto-level -scale 1000% "lines_stats.png"

and then blended with original may produce

![lines.md.png](https://images.weserv.nl/?url=https://i.imgur.com/8Ojz1A1.png)

And it tiles.
