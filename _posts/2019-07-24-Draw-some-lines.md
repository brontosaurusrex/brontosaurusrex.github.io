---
published: true
layout: post
date: '2019-07-24 16:32'
title: Draw some lines
tags: mine
---
[https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/lines](https://raw.githubusercontent.com/brontosaurusrex/stretchbang/master/bin/lines)

Usage:

    lines lines.png

will generate 1920x1200 image with bunch of lines (useful as some sort of mask).

[![woot.md.png](https://cdn.scrot.moe/images/2019/07/24/woot.md.png)](https://cdn.scrot.moe/images/2019/07/24/woot.png)

Additional destruction

    convert lines.png -virtual-pixel tile -auto-level -scale 10% -statistic Mode 10 -colorspace gray -auto-level -scale 1000% "lines_stats.png"

and then blended with original may produce

[![lines.md.png](https://cdn.scrot.moe/images/2019/08/11/lines.md.png)](https://scrot.moe/image/xGyfX)

And it tiles.
