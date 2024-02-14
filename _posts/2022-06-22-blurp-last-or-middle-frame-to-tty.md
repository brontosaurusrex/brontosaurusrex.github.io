---
published: true
layout: post
date: '2022-08-31 19:31'
title: blurp last or middle frame or scene detected frames to tty, update 2
tags: cli bash video 
---
3 simple scripts to blurp [last](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/lastFrame) or [middle](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/middleFrame) or [scene detected](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrame) frames to tty.    
edit: There is also a version of [scene detected that generates some html](https://raw.githubusercontent.com/brontosaurusrex/singularity/master/bin/sceneFrameMitHtml).

edit: Known bugs: When the scene counter reaches 1000, things break (probably won't fix).

lastFrame demo    
[![image-nohash-md](https://i.imgur.com/xTUyJTYl.png)](https://i.imgur.com/xTUyJTY.png)

sceneFrame demo  
[https://www.youtube.com/watch?v=VzYZWDprddI](https://www.youtube.com/watch?v=VzYZWDprddI)

p.s. Also tested with kitty term and seems to work fine  
[![image-nohash-md](https://i.imgur.com/MgIyOG0l.png)](https://i.imgur.com/MgIyOG0.png)
