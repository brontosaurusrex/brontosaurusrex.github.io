---
published: true
layout: post
date: '2019-12-11 23:43'
title: Zebra - display images in urxvt
tags: mine bash 
---
[The Zebra script](https://raw.githubusercontent.com/brontosaurusrex/bucentaur/master/.experiments/bin/zebra).

Needs: 'w3m-img' (w3mimgdisplay) and supported terminal like xterm or urxvt. And probably more.

[![zebra.png-jusqyA0HtN2GYXj-md](https://images.weserv.nl/?url=https://i.imgur.com/pBen3tDl.jpg)](https://images.weserv.nl/?url=https://i.imgur.com/pBen3tD.jpg)
[![zebraIsFast.png-VU3a8uK1hGJ7PrB-md](https://images.weserv.nl/?url=https://i.imgur.com/RQGHoE2.png)](https://images.weserv.nl/?url=https://i.imgur.com/qFlhH6N.jpg)

## Todo:

- maybe: add rename image (should also rename array member?).
- done: add touch to update file date.
- done: add specific key (r) to reset view.
- done: cycle wallpaper setter modes (--set-centered --set-scaled --set-tiled --set-zoom --set-zoom-fill).
- maybe: thumbnail view (also --thumbnail to start in thumb view)
- done: simple slideshow
- done: toggle 1:1 view
- done: --quit some.png (show first and quit)
- no, use zsh globing*(om): sort files (array) by date
- done: goto is internal command only.
- done: open in gimp.
- maybe: pngcrush, pngquant ...

## Known bugs:

- zebraview sometimes doesn't show alpha as transparent (uses white instead), limited to urxvt (always ok in xterm).
- image disappears when urxvt is not in focus (again ok in xterm).

## Acknowledgments

Zebra is based around the code found [here](https://blog.z3bra.org/2014/01/images-in-terminal.html).

## Überzug, complicated alternative 

[https://github.com/seebye/ueberzug](https://github.com/seebye/ueberzug), fzfimg.sh is especially interesting.

[![2019-12-21-122259_3840x1200_scrot.png-dkQedP2DyeYrq3M-md](https://images.weserv.nl/?url=https://i.imgur.com/BmKbxDOl.jpg)](https://images.weserv.nl/?url=https://i.imgur.com/BmKbxDO.jpg)
